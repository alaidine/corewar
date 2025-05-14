const std = @import("std");
const lexer = @import("lexer.zig");

pub fn assemble(filepath: []const u8) !void {
    var gp = std.heap.GeneralPurposeAllocator(.{ .safety = true }){};
    defer _ = gp.deinit();
    var allocator = gp.allocator();

    var path_buffer: [std.fs.MAX_PATH_BYTES]u8 = undefined;
    const path = try std.fs.realpath(filepath, &path_buffer);

    const f = try std.fs.openFileAbsolute(path, .{});
    var metadata = try f.metadata();
    const file_size = metadata.size();
    defer f.close();

    const buffer_size: usize = file_size;
    const file_buffer: []u8 = try f.readToEndAlloc(allocator, buffer_size);
    defer allocator.free(file_buffer);

    const tokens = try lexer.tokenize(file_buffer, metadata.size());
    defer tokens.deinit();

    std.log.debug("{}", .{tokens});
}
