class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    # if side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2 || side1 <= 0 || side2 <= 0 || side3 <= 0
    #   raise TriangleError
    sides = [@side1, @side2, @side3].sort
    if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
      raise TriangleError 

    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side1 == side3 || side3 == side2
      :isosceles
    else
      :scalene
    end
  end

  # def valid_triangle
  #
  #   # sides = [@side1, @side2, @side3].sort
  #   #
  #   # raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  #
  #
  #   if side1 + side2 >= side3 || side2 + side3 >= side1 || side3 + side1 >= side2 || side1 > 0 || side2 > 0 || side3 > 0
  #   raise TriangleError
  #
  # end


  class TriangleError < StandardError
  end

  # write code here
end
