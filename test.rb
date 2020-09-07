def my_join_2(arr, sep)
  new_str = ""
  arr.each{|item| arr[-1] == item ? new_str+=item : new_str+=item+sep }
  yield
  new_str
end


# puts my_join_2(%w{Chima Ekeneme}, ";"){ puts '>>>>>>>>>>>>><<<<<<<<<<<<<'}
# puts my_join_2(["abc", "def", "gh", "!"], "blah"){ puts '>>>>>>>>>>>>><<<<<<<<<<<<<'}
# puts my_join_2(["abc", "def", "gh", "!"], ""){ puts '>>>>>>>>>>>>><<<<<<<<<<<<<'}
# puts my_join_2([], " "){ puts '>>>>>>>>>>>>><<<<<<<<<<<<<'}
# 4.upto(20){|x| puts x}
# 1.upto(10){|i| puts  "I am calling this #{i} times"}
# 5.times{|x| puts "Tested and working - #{x}"}
# (1..10).each{|i| puts "This works too- #{i}"}

puts "The commandline arguments are #{ARGV.length}"
print ARGV

# lines = gets

# p lines
# puts lines
