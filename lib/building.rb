class Building
  attr_accessor :units

  def initialize()
    @units = []
    # @average_rent = 0
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total_rent = 0.0
    @units.each do |unit|
      total_rent += unit.monthly_rent
    end
    total_rent / @units.length
  end

end
