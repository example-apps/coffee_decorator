class Sugar
  def initialize(component)
    @component = component
  end

  def cost
    @component.cost + 0.5
  end

end