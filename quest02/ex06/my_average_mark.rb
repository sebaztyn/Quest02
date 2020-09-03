  class_csci101 = {
  "margot" => 17,
  "june" => 8,
  "colin" => 14,
  "lewis" => 9 }
  class_csci102 = {
  "quentin" => 16,
  "julie" => 15,
  "mark" => 8,
  "stephanie" => 13
  }

def my_average_mark(hash_data)
  hash_values =  hash_data.values
  return hash_values.reduce {|accu, item| accu+item}.to_f/hash_data.size
end

puts my_average_mark(class_csci101)
puts my_average_mark(class_csci102)
