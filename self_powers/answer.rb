require_relative 'lib/powers'

num = Powers.sum_to 1000

num_string = num.to_s

answer = num_string[-10,10]

puts answer
