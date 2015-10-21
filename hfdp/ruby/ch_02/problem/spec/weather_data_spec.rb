require_relative '../spec_helper'

RSpec.describe WeatherData do
  before(:context) do
    @weather_data = described_class.new
    @weather_data.measurements_changed
  end

  it { expect(@weather_data.forecast.display).to_not be(nil) }
  it { expect(@weather_data.statistics.display).to_not be(nil) }
  it { expect(@weather_data.current_conditions.display).to_not be(nil) }
end
