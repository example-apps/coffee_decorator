require 'spec_helper'

describe Coffee do

  let(:coffee) {Coffee.new}

  it "should have a cost of 2.0" do
    expect(coffee.cost).to eq(2.0)
  end

end
