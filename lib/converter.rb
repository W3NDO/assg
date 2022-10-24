class Converter
    def self.md_to_html(text)
        case text
        when text.match?(/^#(?= )/)
            "<h1>#{text.gsub(/^#(?= )/, "")}</h1>"
        end
    end
end