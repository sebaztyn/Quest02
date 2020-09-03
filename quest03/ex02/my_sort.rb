def my_sort(array, order)

  if order== :asc
    return array.sort
  end
  if order== :desc
    return array.sort.reverse
  end
end

print my_sort([4, 7, 0, 3], :asc)
print my_sort([4, 7, 0, 3], :desc)
