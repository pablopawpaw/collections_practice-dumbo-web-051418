def sort_array_asc array
  array.sort
end

def sort_array_desc array
  array.sort {|num1, num2| num2<=>num1}
end

def sort_array_char_count array
  array.sort_by {|num| num.length}
end

def swap_elements array
  second = array.delete_at(1)
  third = array.delete_at(1)
  array.insert(1, third)
  array.insert(2, second)
end

def swap_elements_from_to array, index, destination_index
  swap_element = array.delete_at(index)
  array.insert(destination_index,swap_element)
end

def reverse_array array
  array.reverse
end

def kesha_maker array
  array.map do |element|
    element_array = element.split("")
    element_array[2] = "$"
    element_array.join
  end
end

def find_a array
  array.select {|element| element.start_with?("a")}
end

def sum_array array
  array.inject {|sum, n| sum+n}
end

def add_s array
  array.each_with_index.collect do |element, index|
    if index != 1
      element_array = element.split("")
      element_array << "s"
      element_array.join
    else
      element
    end
  end
end
