const std = @import("std");
const assemble = @import("./assemble.zig");

const allocator = std.heap.page_allocator;

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

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

    try bw.flush(); // don't forget to flush!
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
