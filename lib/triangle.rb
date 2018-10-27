require 'pry'
class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind

    if  self.negative || self.inequality
      raise TriangleError
    else
      if @x != @y && @y != @z && @x !=@z
        return :scalene
      elsif @x == @y && @x == @z
        return :equilateral
      else
        return :isosceles
      end
    end
  end



  def negative
    if @x <= 0 || @y <= 0 || @z <= 0
      true
    else
      false
    end
  end

  def inequality
    if @x+@y <= @z || @z+@y <= @x || @z+@x <= @y
      true
    else
      false
    end
  end




  class TriangleError < StandardError

    def message
      "argument must be positive number"
    end
  end

end
