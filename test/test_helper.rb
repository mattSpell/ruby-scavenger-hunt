$LOAD_PATH << 'lib'
require 'minitest/autorun'

# When adding a new ruby implementation file to your lib directory,
# explicitly require it here like:
# require 'some_file'
require 'matrix'
require 'my_vector'

a = My_Vector[1,2]
b = My_Vector[2,2]
c = My_Vector[3,2]
puts My_Vector.pathlength(a,b,c)
