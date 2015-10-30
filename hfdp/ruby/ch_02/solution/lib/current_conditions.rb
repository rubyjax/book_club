class CurrentConditions
  attr_accessor :temperature

  def initialize
    @temperature = nil
  end

  def update(weather_data)
    self.temperature = weather_data.temperature
  end
end
