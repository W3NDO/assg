require_relative './lexemes'

class Scanner
    attr_accessor :line
    attr_accessor :found_lexemes

    def initialize()
        @line= [] #takes the line content and line number
        @found_lexemes = Hash.new
        LEXEMES.each do |lexeme, regex|
            @found_lexemes[lexeme] = Array.new #line number and starting position
        end
        
    end

    def scan_line()
        LEXEMES.each do |lexemes, regex|
            positions = line[0].index regex
            @found_lexemes[lexemes].push([line[1], positions]) if positions
        end
    end

end

p = Scanner.new

File.open("/home/w3ndo/Desktop/CurrentProjects/assg/sample/test.md").each.with_index(1) do |file, line_number|
    p.line = [file, line_number]
    p.scan_line
end

pp p.found_lexemes