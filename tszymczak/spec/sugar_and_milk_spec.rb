require 'spec_helper'

describe 'Sugar and Milk' do

  let(:coffee) { Coffee.new }

  it "should have a cost of 2.9" do
    expect(Sugar.new(Milk.new(coffee)).cost).to eq(2.9)
  end

  it "should have a cost of 3.4" do
    expect(Sugar.new(Milk.new(Sugar.new(coffee))).cost).to eq(3.4)
  end

end
