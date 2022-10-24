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
require_relative './scanner'



TOKEN_TYPES = {
    :SENTENCE => []
}

class Lexer
    attr_accessor :ast_root
    attr_accessor :file_path
    attr_accessor :scanned_tokens

    def initialize(file_path)
        self.ast_root = Tree::TreeNode.new("ROOT", "HTML")
        self.file_path = file_path
    end

    def build_tree
        scanner = Scanner.new
        File.open(self.file_path).each.with_index(1) do |line, line_number| #index here tracks the line number
            scanner.line = [line, line_number]
            scanner.scan_line() #will generate a hash of tokens. Wildly unordered.
        end

        self.scanned_tokens = scanner.found_lexemes
    end
end

l = Lexer.new("/home/w3ndo/Desktop/CurrentProjects/assg/sample/test.md")
l.build_tree
pp l.scanned_tokens