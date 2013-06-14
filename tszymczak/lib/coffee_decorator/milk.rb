class Milk
  def initialize(component)
    @component = component
  end

  def cost
    (@component.cost + (Coffee::COST * 0.2)).round(2)
  end

end