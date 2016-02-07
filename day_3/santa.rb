class Santa
  attr_reader(:x, :y)
  
  def initialize
    @x = 0
    @y = 0
  end

  def go_a_step direction
    case direction
    when ">" then @x += 1
    when "<" then @x -= 1
    when "^" then @y += 1
    when "v" then @y -= 1
    end
  end
end
