def my_join(array, separator)
  return array.join(separator)
end

puts my_join(["abc", "def", "gh", "!"], '\t')
puts my_join(["abc", "def", "gh", "!"], "\n")
puts my_join(["abc", "def", "gh", "!"], "\t")
puts my_join(["abc", "def", "gh", "!"], "blah")
puts my_join(["abc", "def", "gh", "!"], "")
puts my_join([], " ")
