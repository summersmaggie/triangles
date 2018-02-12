require('rspec')
require('pry')
require('triangles')

describe('triangle') do
  it("will be an equilateral triangle if all sides are equal.") do
    eq_triangle = Triangle.new(3,3,3)
    expect(eq_triangle.calculate()).to(eq("This is an equilateral triangle."))
  end
  it("will be an isosceles triangle if two sides are equal.") do
    iso_triangle = Triangle.new(2,3,3)
    expect(iso_triangle.calculate()).to(eq("This is an isosceles triangle."))
  end
  it("will be a scalene triangle if no sides are equal.") do
    scal_triangle = Triangle.new(2,4,3)
    expect(scal_triangle.calculate()).to(eq("This is a scalene triangle."))
  end
  it("will not be a triangle if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
    scal_triangle = Triangle.new(2,2,4)
    expect(scal_triangle.calculate()).to(eq("This is not a triangle."))
  end
end
