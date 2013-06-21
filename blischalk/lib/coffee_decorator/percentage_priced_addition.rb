class PercentagePricedAddition < PriceDecorator
  def price
    @product.price + (@@base_product.price * @price)
  end
end
