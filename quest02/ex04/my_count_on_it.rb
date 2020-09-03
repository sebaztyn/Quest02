def my_count_on_it(string_array)
  newArr = string_array.map{|item| item.length}
  return newArr

end


print my_count_on_it ['aBc', 'AbcE Fgef1']
print my_count_on_it ['aBc']
print my_count_on_it []
