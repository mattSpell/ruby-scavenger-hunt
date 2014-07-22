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

  def self.calculate_angle(v1, v2)
    hyp1 = Math.sqrt(v1[0]**2 + v1[1]**2)
    hyp2 = Math.sqrt(v2[0]**2 + v2[1]**2)
    angle1 = Math.cos(v1[0]/hyp1)
    angle2 = Math.cos(v2[0]/hyp2)
    radians = angle1 - angle2
  end

  def calculate_angle(v)
    hyp1 = Math.sqrt(self[0]**2 + self[1]**2)
    hyp2 = Math.sqrt(v[0]**2 + v[1]**2)
    angle1 = Math.cos(self[0]/hyp1)
    angle2 = Math.cos(v[0]/hyp2)
    radians = angle1 - angle2
  end

  def distance(vector)
    Math.sqrt((vector[0] - self[0])**2 + (vector[1] - self[1])**2)
  end

  def <<(int)
    My_Vector.elements(self.to_a << int)
  end

end
