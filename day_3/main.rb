require './santa.rb'
require './houselist.rb'

input = File.read('./input')

# Part 1
house_list = HouseList.new
santa = Santa.new
input.each_char do |char|
  santa.go_a_step char
  house_list.add [santa.x, santa.y]
end

puts "Part 1: #{house_list.houses.count}"

# Part 2
house_list = HouseList.new
santas = [Santa.new, Santa.new].cycle

input.each_char do |char|
  santa = santas.next
  santa.go_a_step char
  house_list.add [santa.x, santa.y]
end

puts "Part 2: #{house_list.houses.count}"
