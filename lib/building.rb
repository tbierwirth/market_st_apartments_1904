class Building
  attr_accessor :units

  def initialize()
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

end
