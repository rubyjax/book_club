require_relative '../spec_helper'

describe CurrentConditions do

  describe '#update' do
    let(:current_conditions) { described_class.new }
    let(:dummy_instance) do
      class Foo
        def temperature
          95.0
        end
      end

      Foo.new
    end
    before do
      current_conditions.temperature = nil
    end
    it 'updates the temperature' do
      current_conditions.update(dummy_instance)
      expect(current_conditions.temperature).to eq(dummy_instance.temperature)
    end
  end
end
