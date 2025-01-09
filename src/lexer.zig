const std = @import("std");

const lexer = struct { source: []const u8, ch: u8, nextch: u8 };

pub fn init_lexer(str: []const u8) lexer {
    return lexer{ .source = str, .ch = 0, .nextch = 1 };
}
