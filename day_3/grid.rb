class Grid
  def initialize
    @houses = [[0,0]]
  end

  def next_step(direction)
    case direction
    when '<'
      if !@houses.include? [@houses.last.first-1,@houses.last.last]
        @houses << [@houses.last.first-1,@houses.last.last]
      end
    when '>'
      if !@houses.include? [@houses.last.first+1,@houses.last.last]
        @houses << [@houses.last.first+1,@houses.last.last]
      end
    when '^'
      if !@houses.include? [@houses.last.first,@houses.last.last+1]
        @houses << [@houses.last.first,@houses.last.last+1]
      end
    when 'v'
      if !@houses.include? [@houses.last.first,@houses.last.last-1]
        @houses << [@houses.last.first,@houses.last.last-1]
      end
    end
  end

  def sum
    puts @houses
    @houses.length
  end
end
