$roman_figures={
  "I"=>1,
  "V"=>5,
  "X"=>10,
  "L"=>50,
  "C"=>100,
  "D"=>500,
  "M"=>1000,
}

def edge_cases(cloned_number, edge_case,edge_symbol, divisor, divisor_symbol)
  result = ""
  cloned_number=cloned_number
  if cloned_number>=edge_case
  result +=edge_symbol
  cloned_number-=edge_case
  else
  result+=divisor_symbol
  cloned_number-=divisor
  end
  return result, cloned_number
end
def roman_numerals(number)
  result=""
  cloned_number = number
  value_data= $roman_figures.values.reverse
  value_data.each_with_index do
    |item, idx|
    while (cloned_number>=item)
      if item==1000
        result+="M"
        cloned_number-=1000
      end
      if item==500
        loop_result = edge_cases(cloned_number,900, "CM", 500, "D")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
      if item==100
        loop_result = edge_cases(cloned_number,400, "CD", 100, "C")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
      if item==50
        loop_result = edge_cases(cloned_number,90, "XC", 50, "L")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
      if item==10
        loop_result = edge_cases(cloned_number,40, "XL", 10, "X")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
      if item==5
        loop_result = edge_cases(cloned_number,9, "IX", 5, "V")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
      if item==1
        loop_result = edge_cases(cloned_number,4, "IV", 1, "I")
        cloned_number=loop_result[1]
        result += loop_result[0]
      end
    end
  end
  return result
end

puts roman_numerals(999)
puts roman_numerals(486)
puts roman_numerals(99)
puts roman_numerals(49)
puts roman_numerals(9)
puts roman_numerals(4)
puts roman_numerals(7)
