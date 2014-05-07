def selection_sort(new_array)
  smallest_element = new_array.first
  the_index = 0
  new_array.each do |item|

    if new_array[item] < smallest_element
      new_array[item], new_array[the_index] = new_array[the_index], new_array[item]
      the_index = new_array[item] + 1
    end
  end
  new_array
end
selection_sort([5,4,3,2,1])

