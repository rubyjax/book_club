require_relative '../spec_helper'

RSpec.describe Duck do
  let(:duck) { described_class.new }

  RSpec.shared_examples "shared methods" do
    it { expect(duck.quack).to eq("Quack, quack!") }
    it { expect(duck.swim).to eq("Swish, swish!") }
    it { expect(duck.fly).to eq("Flap, flap!") }
  end

  describe "template method" do
    it { expect { duck.display }.to raise_error(RuntimeError) }
  end

  describe MallardDuck do
    let(:mallard_duck) { described_class.new }
    it_behaves_like "shared methods"
    it { expect(mallard_duck.display).to eq("I am a Mallard Duck!") }
  end

  describe RedheadDuck do
    let(:redhead_duck) { described_class.new }
    it_behaves_like "shared methods"
    it { expect(redhead_duck.display).to eq("I am a Redhead Duck!") }
  end

  describe RubberDuck do
    let(:rubber_duck) { described_class.new }
    it_behaves_like "shared methods"
    it { expect(rubber_duck.display).to eq("I am a Rubber Duck!") }
  end
end
