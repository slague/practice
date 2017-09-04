# It has O(n2) time complexity, making it inefficient on large lists, and generally performs worse than the similar insertion sort.

def find_smallest(array)
  smallest = array[0]
  smallest_index = 0

  array.each do |element|
    if element < smallest
      smallest = element
      smallest_index = array.index(element)
    end
    smallest_index
  end
  smallest
end


def selection_sort(array)
  sorted = []
  until array.empty?
    smallest = find_smallest(array)
    sorted << (smallest)
    array.delete_at(array.index(smallest))
  end
  sorted
end


p selection_sort([5, 3, 4, 2, 8, 9, 12, 3])
p selection_sort(["n", "a", "h", "k", "w", "t", "v"])
