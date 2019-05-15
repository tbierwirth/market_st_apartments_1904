require 'pry'
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

  def renter_with_highest_rent
    units_with_renter = []
    highest_renter = []
    @units.each do |unit|
      if unit.renter != nil
        units_with_renter.push(unit)
      end
    end
    units_with_renter.max_by do |unit|
      unit.monthly_rent
      highest_renter.push(unit.renter)
    end
    highest_renter[0]
  end

  # def renter_with_highest_rent
  #   highest_renter = []
  #   @units.max_by do |unit|
  #     if unit.renter != nil
  #       unit.monthly_rent
  #       highest_renter.push(unit.renter)
  #       # binding.pry
  #     end
  #   end
  #   highest_renter
  # end

end
