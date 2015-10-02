require_relative '../spec_helper'

RSpec.describe CurrentConditions do
  let(:current_conditions) { described_class.new(temp, humidity, pressure) }
  let(:temp) { 1.2 }
  let(:humidity) { 2.3 }
  let(:pressure) { 3.4 }
  let(:measurements) do
    { temp: temp, humidity: humidity, pressure: pressure }
  end

  it { expect(current_conditions.show).to eq(measurements) }
end

RSpec.describe Statistics do
end

RSpec.describe Forecast do
end
