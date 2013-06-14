require 'spec_helper'

describe Milk do

  let(:coffee) { Coffee.new }

  it "should have a cost of 2.4" do
    expect(Milk.new(coffee).cost).to eq(2.4)
  end

  it "should have a cost of 2.8" do
    expect(Milk.new(Milk.new(coffee)).cost).to eq(2.8)
  end

  it "should have a cost of 2.8" do
    expect(Milk.new(Milk.new(Milk.new(coffee))).cost).to eq(3.2)
  end

end
