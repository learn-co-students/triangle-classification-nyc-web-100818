class Triangle

  attr_accessor :equilateral, :isosceles, :scalene, :sides

  def initialize(*sides)
    @sides = sides
  end

  def kind
    tri_kind = { 1 => :equilateral, 2 => :isosceles, 3=> :scalene }
    sorted_tri = @sides.sort
    raise TriangleError if @sides.any? { |num| num <= 0 } || sorted_tri[0] + sorted_tri[1] <= sorted_tri[-1]
    tri_kind[@sides.uniq.length]
  end

  class TriangleError < StandardError
    puts "Triangle cannot have a negative length, nor a length equal to zero. A triangle's longest side must be less than the sum of the two other sides."
  end

end
