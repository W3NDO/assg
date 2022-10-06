# code written by W3NDO

# this implements all the functionality needed to accept commandline arguments for the program.
require 'optparse'

class Cli
    attr_accessor :options
    attr_accessor :files

    def initialize
        self.options = Hash.new
        self.files = Hash.new
    end

    def parse
        OptionParser.new do |option|
            # add new options here, dir is the directory to use
            # something else like --css would specify what css framework to use.
            option.on('--dir=DIR', '-d=DIR', 'Directory for input(markdown) files') do |opt|
                self.options[:dir] = opt
            end

            option.on('--title=TITLE', '-t=TITLE',  'Title of the static sites') { |opt| self.options[:title] = opt }
        end.parse!
    end

    def get_files
        files =Dir.entries(options[:dir])
        files.map!{ |f| f = "#{options[:dir]}/#{f}"}
        return files
    end
end
