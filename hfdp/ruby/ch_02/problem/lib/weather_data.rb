require 'weather_station'

class WeatherData
  include WeatherStation

  attr_accessor :forecast, :statistics, :current_conditions

  def initialize
    @forecast           = Forecast.new
    @statistics         = Statistics.new
    @current_conditions = CurrentConditions.new
  end

  def measurements_changed
    @measurements = get_measurements 
    update_display
  end

  def update_display
    @forecast.update(@measurements)
  end

  private
  
  attr_accessor :weather_station, :measurements

  def get_measurements
    provide_data
  end
end
