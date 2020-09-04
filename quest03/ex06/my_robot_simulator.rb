def run_robot(instructions)
  starting_x=0
  starting_y=0
  bearing = ["north", "east", "south", "west"]
  cloned_instructions = instructions.upcase

  while cloned_instructions.length>0
    first_character = cloned_instructions.chr
    if first_character=="R"
      bearing.rotate!(1)
    end
    if first_character=="L"
      bearing.rotate!(-1)
    end
    if first_character=="A"
      bearing[0]== "north" ?  starting_y -= 1: starting_y
      bearing[0]== "east" ?  starting_x += 1: starting_x
      bearing[0]== "south" ?  starting_y += 1: starting_y
      bearing[0]== "west" ?  starting_x -= 1: starting_x
    end
    cloned_instructions = cloned_instructions[1..-1]
  end
  starting_coordinates = {x:starting_x, y: starting_y, bearing: bearing[0]}
  return starting_coordinates
end

puts run_robot("rAALALL")
puts run_robot("AAAA")
puts run_robot("RAARA")
puts run_robot("")
