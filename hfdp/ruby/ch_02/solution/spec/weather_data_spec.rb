require_relative '../spec_helper'

describe WeatherData do
  describe 'get_temperature' do
    let(:weather_data) { described_class.new }

    context 'no temp readings have been taken' do
      let(:outside_temp) { 98.4 }
      before do
        allow_any_instance_of(Random).to receive(:rand).and_return(outside_temp)
        weather_data.temperature = nil
      end
      it 'records a new atmospheric temperature' do
        weather_data.get_temperature
        expect(weather_data.temperature).to eq(outside_temp)
      end
    end

    context 'a temperature has been stored' do
      let(:old_temp) { 91.0 }
      before do
        weather_data.temperature = old_temp
      end

      it 'records a new temperature' do
        weather_data.get_temperature
        expect(weather_data.temperature).to_not eq(old_temp)
        expect(weather_data.temperature).to be_kind_of(Float)
      end
    end

    describe 'it notifies observers' do
      let(:current_conditions_observer) do
        CurrentConditions.new
      end
      let(:new_temperature) { 93.0 }

      before do
        allow_any_instance_of(Random).to receive(:rand).and_return(new_temperature)
        weather_data.add_observer(current_conditions_observer)
      end

      it 'updates a CurrentConditions observer' do
        expect { weather_data.get_temperature }
               .to change { current_conditions_observer.temperature }
               .from(nil).to(new_temperature)
      end
    end
end
end
