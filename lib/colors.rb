# frozen_string_literal: true

require_relative "../lib/colors/version"
require_relative "./colors/cli.rb"
require_relative "./colors/scraper"
require_relative "./colors/years"
require_relative "./colors/pantonecolors"


require 'pry'
require 'nokogiri'
require 'open-uri'
require 'colorize'
require 'colorized_string'


module Colors
  class Error < StandardError; end
  # Your code goes here...
end

#Where im gonna put all my requires and require relatives