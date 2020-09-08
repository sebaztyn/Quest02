def christmas_tree
  height=4
  start = 1
  increment_factor=2
  max_length = height+start+increment_factor
  data = ARGV[0].to_i
  tree=[]
  # Array.new((data*10)-1, " ")
  if data<0
    return
  end
  if data.instance_of? Integer
    1.upto(data) do
      |item|
      inner_arr = []
      str = ""
      while inner_arr.length<height
        start.times {str += "*"}
        start = start+increment_factor
        splitted = str.split("")
        inner_arr.insert(((((data*10)-1)-splitted.length)/2)+1, *splitted)
        str=""
      end
      puts "The inner array is #{inner_arr}"
      tree << inner_arr
      height +=1
      puts "the tree is #{tree}"
      if item>2
        start = inner_arr[-3].length
        max_length = height+inner_arr[-3].length+increment_factor+2
      else
        start = inner_arr[-2].length
        max_length = height+inner_arr[-2].length+increment_factor
      end
      # puts " The maximum length is #{max_length}"
    end
  else
    puts "Argument must be an integer"
  end
  return tree
end

puts christmas_tree
