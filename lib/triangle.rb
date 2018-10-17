class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end


  def kind
    if (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2 || s1 <=0 || s2 <= 0 || s3 <=0
          begin
            raise TriangleError
          end
    elsif s1 == s2 && s2 == s3
      return :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
      return :isosceles
    else
      return :scalene
    end
  end

 #    self.partner = person
 #   if person.class != Person
 #     begin
 #       raise PartnerError
 #     rescue PartnerError => error
 #         puts error.message
 #     end
 #   else
 #     person.partner = self
 #   end
 # end


class TriangleError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
  end
 end
end
