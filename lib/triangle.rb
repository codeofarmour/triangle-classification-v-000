class Triangle
  attr_reader :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind
    triangle_is_valid?
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end
    
    def triangle_is_valid?
      valid_triangle = [(s1 + s2 > s3), (s1 + s3 > b), (s2 + s3 > s1)]
      [s1, s2, s3].each {|s| valid_triangle << false if s <= 0}
      raise TriangleError if valid_triangle.include?(false)
    end
    
class TriangleError < StandardError
     
  end
    
end
