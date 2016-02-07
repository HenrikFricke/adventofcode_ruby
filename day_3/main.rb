require './santa.rb'

santa = Santa.new
File.read('./input').each_char { |char| santa.go_to_next_house char }
puts santa.houses.count
