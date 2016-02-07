require './grid.rb'

grid = Grid.new
File.read('./input').each_char { |char| grid.next_step char }
puts grid.sum
