class Ribbon
  def initialize l, w, h
    @length, @width, @height = l, w, h
  end

  def sum
    ribbon_for_present+ribbon_for_bow
  end

  def ribbon_for_present
    sides = [@length, @width, @height].sort
    sides[0]+sides[0]+sides[1]+sides[1]
  end

  def ribbon_for_bow
    @length*@width*@height
  end
end
