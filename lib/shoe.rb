class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    already_there?(brand)
  end

  def already_there?(brand)
    if BRANDS.any? { |item| item == brand }
    else
      BRANDS << brand
    end
  end  

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end