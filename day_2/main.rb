require './presents.rb'

total_paper = []
total_ribbon = []

File.open('input').read.each_line.map do |line|
  present = Present.new(line)
  total_paper << present.paper
  total_ribbon << present.ribbon
end

puts "Paper  #{total_paper.reduce(:+)}"
puts "Ribbon  #{total_ribbon.reduce(:+)}"
