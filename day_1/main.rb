require './santa.rb'

input = File.read('./input')

# Part 1
santa = Santa.new
input.each_char do |item|
  case item
  when /\(/ then santa.go_up
  when /\)/ then santa.go_down
  end
end

puts "Last floor #{santa.floor}"

# Part 2
santa = Santa.new
input.each_char do |item|
  case item
  when /\(/ then santa.go_up
  when /\)/ then santa.go_down
  end
  break if santa.basement?
end

puts "First Basement #{santa.steps}"
