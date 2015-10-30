class Displays
  def display
    {
      temp:     @temperature,
      humidity: @humidity   ,
      pressure: @pressure   ,
    }
  end
  
  def update(measurements)
    @temperature = measurements[:temp]
    @humidity    = measurements[:humidity]
    @pressure    = measurements[:pressure]
  end
  
  private

  attr_reader :temperature, :humidity, :pressure
end
