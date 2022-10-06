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



TOKEN_TYPES = {
    :SENTENCE => []
}

class Lexer
    attr_accessor :ast_root
    attr_reader :file_path

    def initialize(file_path)
        self.ast_root = Tree::TreeNode.new("ROOT", "HTML")
        self.file_path = file_path
    end

    def build_tree
        File.open(self.file_path).each.with_index(1) do |lines, line_number| #index here tracks the line number
            lines.each_with_index do |char, index| #index here will track the line position
                
            end
        end
    end
end

File.open("/home/w3ndo/Desktop/CurrentProjects/assg/sample/test.md").each.with_index(1) do |file, line_number|
    pp "#{line_number} :: #{file}"
end
