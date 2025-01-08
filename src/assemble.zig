const std = @import("std");

pub fn assemble(filepath: []const u8) !void {
    var gp = std.heap.GeneralPurposeAllocator(.{ .safety = true }){};
    defer _ = gp.deinit();
    var allocator = gp.allocator();

    var path_buffer: [std.fs.MAX_PATH_BYTES]u8 = undefined;
    const path = try std.fs.realpath(filepath, &path_buffer);

    const f = try std.fs.openFileAbsolute(path, .{});
    defer f.close();

    const buffer_size = 2000;
    const file_buffer = try f.readToEndAlloc(allocator, buffer_size);
    defer allocator.free(file_buffer);

    var iter = std.mem.split(u8, file_buffer, "\n");

    var count: usize = 0;
    while (iter.next()) |line| : (count += 1) {
        std.log.info("{d:>2}: {s}", .{ count, line });
    }
}
