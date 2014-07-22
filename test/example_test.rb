require 'test_helper'
require 'my_vector'

class MyVectorTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.


  end

  # def test_integer_plus_vector
  #   a = My_Vector[1,2]
  #   assert_equal(My_Vector[2,3], a.add_integer(1))
  # end

  def test_shovel_integer_into_vector
    a = My_Vector[1,2]
    assert_equal(My_Vector[1,2,3], a << 3)
  end



end
