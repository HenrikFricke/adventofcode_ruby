class Santa
  attr_reader(:floor, :steps)

  def initialize
    @floor = 0
    @steps = 1
  end

  def go_up
    @floor += 1
    @steps += 1
  end

  def go_down
    @floor -= 1
    @steps += 1
  end

  def basement?
    @floor == -1
  end
end
