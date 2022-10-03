# code by W3NDO

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
                if opt == "."
                    opt = Dir.pwd
                end
                self.options[:dir] = opt
            end

            option.on('--title=TITLE', '-t=TITLE',  'Title of the static sites') { |opt| self.options[:title] = opt }
        end.parse!
    end

    def get_options
        self.options
    end

    def get_files
        return Dir.entries(self.get_options[:dir])
    end
end

cli = Cli.new()
cli.parse
puts cli.get_options