require_relative '../spec_helper'

RSpec.describe Displays do
  let(:displays) { described_class.new }
  let(:measurements) do { 
      temp:     1.2,
      humidity: 3.4,
      pressure: 4.5,
    }
  end

  RSpec.shared_examples "shared methods" do
    it "should update display" do
      displays.update(measurements)

      expect(displays.display).to eq(measurements)
    end
  end

  describe Statistics do
    let(:stats) { described_class.new }
    it_behaves_like "shared methods"

    it "confirms unique method" do
      stats.update(measurements)
      expect(stats.average).to_not be(nil)
    end
  end

  describe Forecast do
    let(:forecast) { described_class.new }
    it_behaves_like "shared methods"
    
    it "confirms unique method" do
      forecast.update(measurements)
      expect(forecast.multiply).to_not be(nil)
    end
  end

  describe CurrentConditions do
    let(:current_conditions) { described_class.new }
    it_behaves_like "shared methods"
    
    it "confirms unique method" do
      current_conditions.update(measurements)
      expect(current_conditions.sum).to_not be(nil)
    end
  end
end 
