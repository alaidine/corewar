const std = @import("std");

pub fn assemble(file: []const u8) !void {
    std.debug.print("{s}\n", .{file});
}
