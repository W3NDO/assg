require 'kramdown'
require_relative './bin/cli'

cli = Cli.new
cli.parse
# puts cli.get_files

Dir.mkdir('./output_files') unless Dir.exists?('./output_files')
cli.get_files.each do |file|
    filename = file.split('/').last.gsub('.md', '')
    if File.file? file
        new_file = Kramdown::Document.new(File.read(file)).to_html
        File.new("./output_files/#{filename}.html")
        File.write("./output_files/#{filename}.html", new_file)
    end
end
