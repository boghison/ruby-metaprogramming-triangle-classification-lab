class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def check_valid
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    end
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side3 + @side2 <= @side1
      raise TriangleError
    end
  end

  def kind
    check_valid
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else 
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
