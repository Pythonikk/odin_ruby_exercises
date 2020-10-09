test_array = [4, 9, 3, 1, 7, 2, 0, 5, 6, 8]

def bubble_sort(array)
  length = array.length - 1
  max_swaps = length ** 2
  index = 0

  loop do
    swapped = false
    while index < length
      if array[index] > array[index + 1] then
        array.insert(index, array.delete_at(index + 1)) 
        swapped = true
        index += 1
        max_swaps -= 1
      else
        index += 1
        max_swaps -= 1 
        next
      end
    end
    index = 0
  break if swapped == false || max_swaps == 0
  end
  return array
end

p bubble_sort(test_array)
