class FixedPricedAddition < PriceDecorator
  def price
    @product.price + @price
  end
end
