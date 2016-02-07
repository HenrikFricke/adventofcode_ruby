require './ribbons.rb'

class Present
  def initialize line
    line = line.split('x')
    @length, @width, @height = line[0].to_i, line[1].to_i, line[2].to_i
  end

  def paper
    2*@length*@width+2*@width*@height+2*@height*@length+smallest_area
  end

  def ribbon
    Ribbon.new(@length, @width, @height).sum
  end

  def smallest_area
    [@length*@width, @width*@height, @height*@length].min
  end
end
