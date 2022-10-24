require "spec_helper"
require "converter"

RSpec.describe Converter do
    describe "md_to_html" do
        it "wraps the text in a paragraph" do
            expect(Converter.md_to_html("hi there")).to eql("<p>hi there</p>")
        end

        it "supports headers" do
            expect(Converter.md_to_html("# I am a header")).to eql('<h1>I am a header</h1>')
        end

        xit "supports bold" do
            expect(Converter.md_to_html("hi **there**")).to eql('<p>hi <strong>there</strong></p>')
        end

        xit "supports italic" do
            expect(Converter.md_to_html("hi _there_")).to eql('<p>hi <em>there</em></p>')
        end

        xit "supports links" do
            expect(Converter.md_to_html("hi there [link](https://example.com)")).to eql('<p>hi there <a href="https://example.com>link</a></p>')
        end

        # multiple paragraphs where an empty line means new paragraph
    end
end