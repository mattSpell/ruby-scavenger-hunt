require 'test_helper'
require 'my_vector'

class My_Vector < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.


  end

  def test_integer_plus_vector
    a = My_Vector[1,2]
    assert_equal(My_Vector[2,3], a.add_integer(1))
  end

end
