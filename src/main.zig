const std = @import("std");
const assemble = @import("./assemble.zig");

const allocator = std.heap.page_allocator;

pub fn main() !void {
    var args = try std.process.ArgIterator.initWithAllocator(allocator);
    defer args.deinit();
    _ = args.skip();

    var files = std.ArrayList([]const u8).init(allocator);
    var options = std.ArrayList([]const u8).init(allocator);

    defer files.deinit();
    defer options.deinit();

    while (args.next()) |arg| {
        std.fs.cwd().access(arg, .{}) catch {
            if (std.mem.eql(u8, arg, "-asm"))
                try options.append(arg);
            continue;
        };
        try files.append(arg);
    }

    for (try files.toOwnedSlice()) |file|
        try assemble.assemble(file);
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
