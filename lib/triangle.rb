class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind # returns the symbol of the triangle type
    # first do error cases for invalid triangle
    if s1 + s2 <= s3 || s1 + s3 <= s2 || s2 + s3 <= s1 || s1 <= 0 || s2 <= 0 || s3 <= 0
      # throw error
      raise TriangleError
    elsif s1 == s2 && s2 == s3 # equilateral
      return :equilateral
    elsif s1 == s2 || s1 == s3 || s2 == s3 # isosceles
      return :isosceles
    else
      return :scalene
    end
  end

  # error code
  class TriangleError < StandardError

  end

end # end of Triangle class
