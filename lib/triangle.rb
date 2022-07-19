require 'pry'

class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sorted = [a, b, c].sort
  end

  def kind
    if valid_triangle
      if @sorted.uniq.length == 1
        :equilateral
      elsif @sorted.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  def valid_triangle
    if @a && @b && @c > 0
      # sorted = [a, b, c].sort
      greatest_side = @sorted.last
      greatest_side < @sorted[0] + @sorted[1] 
      # binding.pry
    end

    # binding.pry
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end

# t1 = Triangle.new(1,2,3)
# t1.valid_triangle(1,2,3)