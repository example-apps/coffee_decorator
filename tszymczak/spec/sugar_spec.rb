require 'spec_helper'

describe Sugar do

  let(:coffee) { Coffee.new }

  it "should have a cost of 2.5" do
    expect(Sugar.new(coffee).cost).to eq(2.5)
  end

  it "should have a cost of 3.0" do
    expect(Sugar.new(Sugar.new(coffee)).cost).to eq(3.0)
  end

  it "should have a cost of 3.5" do
    expect(Sugar.new(Sugar.new(Sugar.new(coffee))).cost).to eq(3.5)
  end

end
