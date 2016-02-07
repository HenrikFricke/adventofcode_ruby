class HouseList
  attr_reader(:houses)

  def initialize
    @houses = {[0,0] => 1}
  end

  def add coordinates
    @houses[coordinates] = 1
  end
end
