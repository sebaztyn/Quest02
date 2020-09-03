class_result = {
  "John" => 7,
  "Margot" => 8,
  "Jules" => 4,
  "Marco" => 19
}
class_result_two = {
  "Quentin" => 1,
  "Fred" => 1,
  "Julia" => 18,
  "stephanie" => 13
}


def class_average(class_results={})
  if class_results.empty?
    return 0.to_f
  end

  # sum = 0.0;
  # class_results.each{|e, v| sum += v}
  hash_values =  class_results.values
  return hash_values.reduce {|accu, item| (accu+item).to_f}/hash_values.size

  # sum/class_results.length
end

puts class_average class_result
puts class_average class_result_two
# puts class_average ({"name"=>"ghj"})
puts class_average ({"name"=>9, "Ali"=>3})
puts class_average
