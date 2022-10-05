# code written by W3NDO
# The lexer/tokenizer will split the markdown files into tokens

=begin
    We're trying to tokenize only a subset of markdown,
    Specifically:
        level 1 to level 4 titles (#, ##, ###, ####)
        plain text
        links { [text](link) }
        links that become images { [img alt text](url/filepath) }
        unordered list items ( hyphenated )
        ordered list items ( numbers/alphabet )
        styling tags (asterisks, underscores)
    
=end

require 'tree' # https://rubygems.org/gems/rubytree

TOKENS = { #values here are regexp
    :T_LEVEL_1_HEADER => /#/,
    :T_LEVEL_2_HEADER => /##/,
    :T_LEVEL_3_HEADER => /###/,
    :T_LEVEL_4_HEADER => /####/,
    :T_LEFT_SQUARE_BRACKET => /\]/,
    :T_RIGHT_SQUARE_BRACKET => /\[/,
    :T_LEFT_PAREN => /\(/,
    :T_RIGHT_PAREN => /\)/,
    :T_HYPHEN => /-/,
    :T_UNDERSCORE => /_/,
    :T_DIGITS => /[0-9]/,
    :T_ALPHABET => /[a-zA-Z]/,
    :T_ASTERISK => /\*/,
    :T_DOUBLE_ASTERISK => /\*\*/,
    :T_DOUBLE_UNDESCORE => /__/
}

class Lexer
    attr_accessor :ast_root

    def initialize
        self.ast_root = Tree::TreeNode.new("ROOT", "HTML")
    end
end
