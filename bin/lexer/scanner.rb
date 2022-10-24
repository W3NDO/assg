require_relative './lexemes'

class Scanner
    attr_accessor :line
    attr_accessor :found_lexemes 

    # structure of found_lexems
    # { line_number: {
    #     top_level_lexeme: {
    #         sub_lexeme: {
    #             content
    #         }
    #     }
    #   }
    # }
    # example (# TITLE [WITH LINK](link) ) will be broken down into
    # { 0: 
    #     {
    #         L_LEVEL_1_HEADER: {
    #                 L_PARAGRAPH: "TITLE",
    #                 L_LEFT_SQUARE_BRACKET: "[",
    #                 L_LINK_TEXT: "WITH LINK",
    #                 L_RIGHT_SQUARE_BRACKET: "]"
    #                 L_LEFT_PAREN: "(",
    #                 L_LINK_URL: "link",
    #                 L_RIGHT_PAREN: ")",
    #                 L_NEWLINE: "\n"
    #             }
    #    }
    # }
    # we need a function we can recursively call to generate the nesting.
    # we also need a hierachy of nesting, so lexeme precedence of some kind?

    def initialize()
        @line= [] #takes the line content and line number
        @found_lexemes = Hash.new     
    end

    def scan_line()
        LEXEMES.each do |lexemes, regex|
            positions = line[0].index regex
            @found_lexemes[line[1]] = push([line[1], positions]) if positions
        end
    end

    # When scanning we probably need to return the structuere of that line, for instance:
        # if it matches a heading tag that is the top level key, with the value being the PARAGRAPH lexem on the same line_number
    # some lexemes need a pair to close them
    # also need to find a way to track the content associated with a lexeme. 
    # need to define those relationships for lexemes and content, for instance 
        # Headings will be the # followed by text then a newline char
        # plain text will start with text and end with a newline char
    def build_pairs() 

    end

end