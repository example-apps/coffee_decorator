class PriceDecorator
  attr_accessor :name, :base_product, :product, :price
  @@base_product = nil

  def initialize(product, name, price)
    @@base_product = product if @@base_product.nil?

    @product = product
    @name = name
    @price = price
  end

end
