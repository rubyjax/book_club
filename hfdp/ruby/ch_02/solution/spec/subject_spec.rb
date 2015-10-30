require_relative '../spec_helper'

RSpec.describe Subject do
  let(:dummy_class) { class DummyClass; include Subject; end  }
  
  describe "initialize dummy class" do
    let(:forecast) { Forecast.new }
    let(:statistics) { Statistics.new }
    let(:current_conditions) { CurrentConditions.new }
    let(:subject) { dummy_class.new }

    it "should return an empy array" do
      expect(subject.observers).to eq([])
    end

    it "should add an observer" do
      subject.add_observer(forecast, statistics, current_conditions)

      expect(subject.observers.count).to eq(3)
    end

    it "should remove one observer" do
      subject.add_observer(forecast, statistics, current_conditions)
      subject.remove_observer(forecast)
      
      expect(subject.observers.count).to eq(2)
      expect(subject.observers).to eq([statistics, current_conditions])
    end
  end
end
