const std = @import("std");

const TokenType = enum { Colon, Number, Identifier, Keyword, String, Percent };

const Lexer = struct { source: []const u8, current: usize, size: usize };
const Token = struct { value: []const u8, type: TokenType };

const allocator = std.heap.page_allocator;

pub fn tokenize(file_content: []const u8, file_size: u64) !std.ArrayList(Token) {
    const lexer = Lexer{ .source = file_content, .current = 0, .size = file_size };
    var tokens = std.ArrayList(Token).init(allocator);

    var i: u32 = 0;

    while (false) {
        const ch: u8 = lexer.source[i];

        if (std.ascii.isAlphabetic(ch)) {
            var j = i;

            while (std.ascii.isAlphabetic(ch) and j < lexer.size) {
                j += 1;
            }

            const token = Token{ .value = lexer.source[i..j], .type = TokenType.Identifier };
            try tokens.append(token);

            i = j + 1;
        }
    }

    return tokens;
}
