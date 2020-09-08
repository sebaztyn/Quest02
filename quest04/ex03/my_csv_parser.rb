def my_csv_parser(filename, separator=",")
  File.read(filename)
  file=File
  read = ""
  if file.file?(filename)
    read = file.read(filename).split(/\n/)
  else
    puts "File does not exist"
  end
  new_arr = read.map{|item| item.split(separator)}
  return new_arr
end


print my_csv_parser("data.csv")
