require 'pry'
class Triangle
  attr_accessor :sides

  def initialize(*length)
    @sides = length
  end

  def kind
    # handle errors first
    if sides.count != 3 # must have three sizes
      raise TriangleError
    elsif self.sides.any? {|side| side <= 0} # side can't  be 0 or negative
      raise TriangleError
    elsif !self.has_equality? # doesn't violate triangle inequality rule
      raise TriangleError
    else
      # then check what kind
      case self.sides.uniq.count
        when 1
          :equilateral
        when 2
          :isosceles
        else
          :scalene
      end
    end
  end

  def has_equality?
    (self.sides[0] + self.sides[1]) > self.sides[2] && (self.sides[1] + self.sides[2]) > self.sides[0] && (self.sides[0] + self.sides[2]) > self.sides[1]
  end

  class TriangleError < StandardError
    def zero_or_negative_side_message
      "Triangle can't have zero or negative side length"
    end
    def triangle_inequality_violation_message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality."
    end
    def not_enough_sides_message
      "Triangles have three sides... (separated by commas)"
    end
  end

end
