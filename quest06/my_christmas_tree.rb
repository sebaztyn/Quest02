def christmas_tree
  height=4
  start = 1
  increment_factor=2
  data = ARGV[0].to_i
  max_length = ((data*10)-1)
  legs=[]
  tree=[]
  if data<0
    return
  end
  1.upto(data) do
    |item|
    inner_arr = []
    splitted=[]
    str = ""
    out_str = []
    counter = 0
    while counter<height
      start.times {str += "*"}
      padding=""
      half_length = (max_length-str.length)/2
      padding=" "*half_length.abs
      start = start+increment_factor
      out_str<<str
      splitted<< (padding+str+padding)
      str=""
      counter +=1
    end
    inner_arr.insert(0, *splitted)
    tree.insert(tree.length,*inner_arr)
    height +=1
    if item>2
      start = out_str[-3].length
    else
      start = out_str[-2].length
    end
  end
  1.upto(data) do
    str=""
    data.times {str += "|"}
    half_length = (max_length-str.length)/2
    padding=" "*half_length
    legs<<(padding+str+padding)
  end
  tree.insert(tree.length, *legs)
  return tree
end
puts christmas_tree
