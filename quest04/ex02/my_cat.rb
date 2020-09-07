def my_cat()
  file_string = ""
  if ARGV.size>0
    file = File
    ARGV.each do
      |filename|
      if file.file?(filename)
        read = file.read(filename)
        file_string +="#{read}\n"
      else
        puts "File #{filename} does not exist"
      end
    end
  else
    puts ARGF.read
  end
  return file_string
end
puts my_cat
