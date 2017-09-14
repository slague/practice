# Given an image represented by an NxN matrix, where each pixel in the image is
# 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
# place?
# [[1, 2, 3],
#  [4, 5, 6],
#  [7, 8, 9]]

# [[7, 4, 1],
#  [8, 5, 2],
#  [9, 6, 3]]

# [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
# [[7, 4, 1], [8, 5, 2], [9, 6, 3]]

# 2, 4, 6
# 0,0 --> 0,2
# 0,1 --> 1,2
# 0,2 --> 2,2

# 1,0 --> 0,1
# 1,1 --> 1,1
# 1,2 --> 2,1

# 2,0 --> 0,0
# 2,1 --> 1,0
# 2,2 --> 2,0


def rotate_matrix(matrix)
  p matrix.reverse.transpose
end

my_matrix = [ [1, 2, 3], [4, 5, 6], [7, 8, 9] ]

rotate_matrix(my_matrix)
