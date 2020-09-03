def rostring(string)
  newStr = string.split(" ")
  return newStr.rotate(1).join(" ")
end

puts rostring("Chima Ekeneme")
puts rostring("abc ")
puts rostring("Que la lumiere soit et la lumiere fut")
puts rostring(" AkjhZ zLKIJz , 23y")
puts rostring("")
