const std = @import("std");

const TokenType = enum { SEMICOLON, COLON, NUMBER, WORD };

const lexer = struct { source: []const u8, ch: u8, nextch: u8, size: u8 };
const token = struct { value: []const u8, type: TokenType };

pub fn init_lexer(str: []const u8) lexer {
    return lexer{ .source = str, .ch = 0, .nextch = 1, .size = std.mem.len(str) };
}

pub fn tokenize(str: []const u8) []const TokenType {
    var lex = init_lexer(str);
    var allocator = std.heap.page_allocator;
    var tokens = {};

    return tokens;
}
