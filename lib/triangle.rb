class Triangle

  attr_accessor :s1, :s2, :s3

  @@all = []

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @@all << self
  end

  class TriangleError < StandardError
  end

  def kind
    if s1 <= 0 || s2 <= 0 || s3 <= 0 || s1 + s2 <= s3 || s1 + s3 <= s2 || s2 + s3 <= s1
      raise TriangleError
    else
      if self.s1 == self.s2 && self.s2 == self.s3
        return :equilateral
      elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s3 == self.s1
        return :isosceles
      else
        return :scalene
      end
    end
  end

  def self.all
    @@all
  end

end
