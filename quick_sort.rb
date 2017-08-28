# This is quicker than selection sort, quick sort uses "divide and conquer"
# what is the simplest array? --> an empty array, or an array with 1 element

# []
# [20]

# These are the 'base case'--- remember with D&C there is a base case

# for larger arrays, pick an element from the array- the pivot
# find the elements smaller than the pivot and place them to the left, larger to the right and then
# call quicksort on the sub arrays that are to the the left and right


def quicksort(array)
  if array.length < 2
    array
  else
    piv = (array.length / 2)
    pivot = array[piv]
    less = array.select { |num| num.to_i < pivot }
    greater = array.select {|num| num.to_i > pivot }

    sorted_array = []
    sorted_array << quicksort(less)
    sorted_array << pivot
    sorted_array << quicksort(greater)
     sorted_array.flatten!
  end
  # p sorted_array
end

p quicksort([3, 4, 6, 2, 9, 1, 8, 5, 7])
