require './presents.rb'

# total = 0
# File.open('input').read.each_line do |line|
#   line = line.split('x')
#   total += Present.new(line[0].to_i, line[1].to_i, line[2].to_i).paper
# end

total_paper = []
total_ribbon = []

File.open('input').read.each_line.map do |line|
  present = Present.new(line)
  total_paper << present.paper
  total_ribbon << present.ribbon
end

puts "Paper  #{total_paper.reduce(:+)}"
puts "Ribbon  #{total_ribbon.reduce(:+)}"
