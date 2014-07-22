require 'matrix'
class My_Vector < Vector

  def self.pathlength(*n)
    output = 0
    n.each_index do |i|
      unless n[(i + 1)].nil?
        calc = n[i].distance(n[(i + 1)])
        output += calc
      end
    end
    output
  end

  def distance(vector)
    Math.sqrt((vector[0] - self[0])**2 + (vector[1] - self[1])**2)
  end

end
