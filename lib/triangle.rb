class Triangle
  attr_reader :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

    if s1 >= s2 + s3 || s2 >= s1 + s3 || s3 >= s2 + s1
      raise TriangleError
    end
    if s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    end
  end

  def kind
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 ==s3
      :isosceles
    else 
      :scalene
    end 
  end


  class TriangleError < StandardError
    def message 
      "not a triangle"
    end
  end
end
