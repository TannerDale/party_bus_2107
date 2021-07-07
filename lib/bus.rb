class Bus
  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def yell_at_passengers
    @passengers.map(&:upcase)
  end

  def number_of_passengers
    @passengers.size
  end

  def over_capacity?
    number_of_passengers > @capacity
  end
end
