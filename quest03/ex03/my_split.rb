def my_split(string, charset)
  puts charset[0..-1]
  if charset.size == 1
    return string.split(charset)
  end
  # characters = charset.split("").join("|")
  return string.split(/ /)
end


print my_split("abc def gh\t!", "\t")
print my_split("abc def gh\t!", " \t")
print my_split("abc def gh\t!", "def ")
print my_split("", " ")
