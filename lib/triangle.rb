class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    is_triangle?
    if a == b && b == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene
    else
      :isosceles
    end
  end

  def is_triangle?
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each {|side| real_triangle.push(false) if side <= 0}
    if real_triangle.include?(false)
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end
