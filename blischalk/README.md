To run:

From root of blischalk

bundle install

ruby -I lib bin/coffee_decorator


Output displayed is the total cost of:
Coffee: $2.00
Sugar: $0.50
Cream: 20% of the coffee price e.g $0.40

Totaling: $2.90


To add other ingredients:

open bin/coffee_decorator

Add as many new Percentage or Fixed Priced Additions (Decorators) as desired

FixedPricedAddition.new(PercentagePricedAddition.new(Product.new('Coffee', 2.00), 'Cream', 0.20), 'Sugar', 0.50).price


FixedPricedAddition.new(PercentagePricedAddition.new(FixedPricedAddition.new(FixedPricedAddition.new(
      PercentagePricedAddition.new(
        Product.new('Coffee', 2.00), 
      'Cream', 0.20), 
    'Sugar', 0.50), 'Hazelnut Syrup', 0.25), 'Whip Cream', 0.25), 'Espresso Shot', 1.00)
