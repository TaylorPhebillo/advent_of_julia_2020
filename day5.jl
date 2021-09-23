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
#maxv = 0
#for line in readlines("day5.txt")
#  global maxv = max(maxv, toID(line))
#  println(toID(line))
#end
println(maximum(toID.(readlines("day5.txt"))))

