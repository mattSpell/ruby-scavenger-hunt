require 'test_helper'
require 'my_vector'
require 'cmath'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
    @a = My_Vector[1,2]
    @b = My_Vector[2,2]

  end

  # def test_integer_plus_vector
  #   a = My_Vector[1,2]
  #   assert_equal(My_Vector[2,3], a.add_integer(1))
  # end

  def test_shovel_integer_into_vector

    assert_respond_to @a, :<<
    assert_equal(My_Vector[1,2,3], @a << 3)
  end

  def test_get_angle_between_2_vectors_in_radians
    c = My_Vector[2,3]
    d = My_Vector[3,1]
    angle = My_Vector.calculate_angle(c, d)

    assert_equal(angle, 0.26730477096022687)
  end

  def test_instance_get_angle_between_2_vectors_in_radians
    c = My_Vector[2,3]
    d = My_Vector[3,1]
    angle = c.calculate_angle(d)

    assert_equal(angle, 0.26730477096022687)
  end



end
