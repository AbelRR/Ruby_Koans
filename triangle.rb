# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a,b,c].sort_by(&:to_i)
  if a<=0 || b<=0 || c<=0
    raise TriangleError, "Triangle sides must lengths greater than 0"
  end

  if sides[0] + sides[1] <= sides[2] ||
     sides[1] + sides[2] <= sides[0] ||
     sides[2] + sides[0] <= sides[1]
    raise TriangleError, "Sum of any two sides must be greater than other"
  end

  value = [a,b,c].uniq.length
  value == 1 ? :equilateral : value == 2 ? :isosceles : :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
