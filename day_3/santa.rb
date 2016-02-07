class Santa
  attr_reader(:houses)

  def initialize
    @x = 0
    @y = 0
    @houses = [[0,0]]
  end

  def go_to_next_house(direction)
    case direction
    when ">" then @x += 1
    when "<" then @x -= 1
    when "^" then @y += 1
    when "v" then @y -= 1
    end
    @houses.push [@x, @y] unless @houses.include? [@x, @y]
  end
end
