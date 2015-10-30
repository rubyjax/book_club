module WeatherStation
  def provide_data
    { 
      temp:     faux_sensor,
      humidity: faux_sensor, 
      pressure: faux_sensor, 
    }
  end

  private 

  def faux_sensor 
    reading = rand * (10-1) + 1 
    return reading.round(3)
  end
end
