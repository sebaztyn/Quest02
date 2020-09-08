def hamming_dna(dna_1, dna_2)
  counter=0
  hamming_distance=0
  while dna_1.length>counter
    if dna_1[counter] != dna_2[counter]
      hamming_distance+=1
    end
    counter+=1
  end
  return hamming_distance;
end

puts hamming_dna("GGACTGAAATCTG", "GGACTGAAATCTG")
puts hamming_dna("GGACGGATTCTG", "AGGACGGATTCT")
puts hamming_dna("", "")
puts hamming_dna("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")
