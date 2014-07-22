
class My_Vector < Vector
  def initialize(x, y)
    @x = x
    @y = y

  end

  def distance(vector)
    Math.sqrt((vector.x - vector.y)**2 + (@x - @y)**2)
  end

end
