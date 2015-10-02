class CurrentConditions
  attr_accessor :temp, :humidity, :pressure, :measurements

  def initialize(temp, humidity, pressure)
    @temp = temp
    @humidity = humidity
    @pressure = pressure
  end
  
  def show
    @measurements = { 
      temp: @temp        , 
      humidity: @humidity, 
      pressure: @pressure, 
    }
  end
end
