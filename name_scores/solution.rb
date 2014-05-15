require 'pry't :
require_relative './lib/names'

uncleaned = File.open('names.txt', 'r').read.split(',')

cleaned = uncleaned.collect do |word|
  word.gsub('"', '')
end

names = Names.new(cleaned)

puts names.score
