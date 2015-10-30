require 'subject'

class WeatherData
  include Subject
  attr_accessor :temperature

  def initialize
    super
    @temperature = nil
  end

  def get_temperature
    self.temperature = Random::DEFAULT.rand(90.0..100.0)
    notify_observers
  end
end
