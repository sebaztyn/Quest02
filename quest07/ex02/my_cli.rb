require 'readline'


stty_save = `stty -g`.chomp

begin
  while line = Readline.readline('> ', true)
  if line == "exit"
    puts "Goodbye!"
    exit!
  end
  p line.split(" ")
  # print arr
  end
rescue Interrupt=> e
  system('stty', stty_save)
  exit
end
