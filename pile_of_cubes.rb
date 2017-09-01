# CODEWARS
# Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.
#
# You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?
#
# The parameter of the function findNb (find_nb, find-nb, findNb) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

def pile_of_cubes(m)
  n = 1
  n^3
  n^3 + (n+1)^3
  n^3 + (n+1)^3 + (n+2)^3


  # check m against 1^3
  # check m against 1^3 + 2^3
  # check m against 1^3 + 2^3 + 3^3...


end

# say n is 3
# the vol of bottom cube is 27
# the second cube vol is 8
# the third cube vol is 1
#
#
# if n is  2 total volume is 1 + 8 = 9
#   given 9 how many cubes are there?
#
# if n is  3 total volume is 1 + 8 + 27 = 36
#   given 36 how many cubes are there?
#
#   how many cubes added up are in the total...
#   start adding them up 1 + 8 = 9
#   then add the next 1 + 8 + 27
