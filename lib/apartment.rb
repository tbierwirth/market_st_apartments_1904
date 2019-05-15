class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms
  attr_accessor :renter

  def initialize(details)
    @number = details[:number]
    @monthly_rent = details[:monthly_rent]
    @bathrooms = details[:bathrooms]
    @bedrooms = details[:bedrooms]
    @renter = renter
  end

  def add_renter(renter)
    @renter = renter
  end

end
