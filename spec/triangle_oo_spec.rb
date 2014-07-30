require 'rspec'
require 'triangle_oo'

describe 'Triangle' do
  it 'is initialized with three sides' do
    test_triangle = Triangle.new(1, 2, 3)
    expect(test_triangle).to be_an_instance_of Triangle
  end
  it 'returns equilateral if all sides are equal' do
    test_triangle = Triangle.new(3, 3, 3)
    test_triangle.type.should eq ('equilateral')
  end
  it 'returns scalene if all sides are unequal' do
    test_triangle = Triangle.new(2, 4, 1)
    test_triangle.type.should eq ('scalene')
  end
  it 'returns isosceles if two sides are equal' do
    test_triangle = Triangle.new(2, 3, 3)
    test_triangle.type.should eq ('isosceles')
  end
end
