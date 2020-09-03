def my_is_sort(intArr)
  return (intArr == intArr.sort) || (intArr == intArr.sort.reverse)
  # return sortArr === intArr

end

# puts my_is_sort()
puts my_is_sort  [1, 1, 2]
puts my_is_sort [2, 1, -1]
puts my_is_sort [4, 7, 0, 3]
