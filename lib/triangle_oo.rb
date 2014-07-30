class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def type
    if (@side1 != @side2) && (@side2 != @side3) && (@side3 != @side1)
      result = 'scalene'
    elsif (@side1 == @side2) && (@side2 == @side3)
      result = 'equilateral'
    else
      result = 'isosceles'
    end
    result
  end
end
