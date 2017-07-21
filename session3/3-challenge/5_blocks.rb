# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
#array = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
 #]
# order = []
#spiral_access array do |i|
#  order << i
 #end
  #order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


def spiral_access array, &block

n = array[0].size - 1
i = 0

until n<i
array[i][i..n].each{|num| block.call num}
(i+1).upto(n){|num| block.call array[num][n]}
array[n].reverse[i+1..n].each{|num| block.call num}
(i+1).upto(n-1){|num| block.call array.reverse[num][i]}

i +=1
n-= 1
end
end
