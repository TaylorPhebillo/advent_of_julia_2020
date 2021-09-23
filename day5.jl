function toID(seat_instructions)
  id = 0
  index_id = 64 * 8
  for char in seat_instructions
    if (char == 'R' || char == 'B')
      id += index_id
    end
    index_id /= 2
  end
  return id
end
println(sum(toID.(readlines("day5.txt")))- (835*836/2) + (11*10/2))

