require 'spec_helper'

describe 'Coffee Decorator' do
  it 'provides a price of coffee plus other decorated ingredients prices' do
    coffee_cream_sugar = FixedPricedAddition.new(PercentagePricedAddition.new(Product.new('Coffee', 2.00), 'Cream', 0.20), 'Sugar', 0.50)
    coffee_cream_sugar.price.should eq(2.90)
  end
  
  it 'allows unlimited ingredients' do
    coffee_cream_sugar_hazelnut_whip_cream_espresso = FixedPricedAddition.new(FixedPricedAddition.new(FixedPricedAddition.new(FixedPricedAddition.new(
      PercentagePricedAddition.new(
        Product.new('Coffee', 2.00), 
      'Cream', 0.20), 
    'Sugar', 0.50), 'Hazelnut Syrup', 0.25), 'Whip Cream', 0.25), 'Espresso Shot', 1.00)

    coffee_cream_sugar_hazelnut_whip_cream_espresso.price.should eq(4.40)
  end

  it 'allows a mixture of percentage and fixed priced ingredients' do
    # whip cream and cream are percentage priced based on the cost of the coffee
    coffee_cream_sugar_hazelnut_whip_cream_espresso = FixedPricedAddition.new(PercentagePricedAddition.new(FixedPricedAddition.new(FixedPricedAddition.new(
      PercentagePricedAddition.new(
        Product.new('Coffee', 2.00), 
      'Cream', 0.20), 
    'Sugar', 0.50), 'Hazelnut Syrup', 0.25), 'Whip Cream', 0.25), 'Espresso Shot', 1.00)

    coffee_cream_sugar_hazelnut_whip_cream_espresso.price.should eq(4.65)
  end

end
