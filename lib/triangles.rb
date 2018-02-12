class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def calculate
    if @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      "This is not a triangle."
    elsif @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      "This is an equilateral triangle."
    elsif @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      "This is a scalene triangle."
    else @side1 == @side2 || @side2 == @side3 || @side1 == @side3 || @side3 == @side1 || @side2 == @side1 || @side3 == @side2
      "This is an isosceles triangle."
    end
  end
end
