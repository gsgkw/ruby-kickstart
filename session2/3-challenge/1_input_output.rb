# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
#
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

def sum_difference_product
  # your code goes here

puts "Please type your two integers separated by a space and followed by enter"
integers = gets.chomp.split (" ")
integers.map! { |num| num.to_i }
puts integers[0] + integers[1]
puts integers[0] - integers[1]
puts integers[0] * integers[1]
end
