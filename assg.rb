require 'kramdown'
require_relative './bin/cli'

cli = Cli.new
cli.parse
# puts cli.get_files

Dir.mkdir('./output_files') unless Dir.exists?('./output_files')
cli.get_files.each do |file|
    filename = file.split('/').last.gsub('.md', '.html')
    p filename
    if File.file? file
        file_content = Kramdown::Document.new(File.read(file)).to_html
        File.open("./output_files/#{filename}", 'w'){ |file| file.write(file_content)}
    end
end
