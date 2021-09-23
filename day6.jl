function count(collected)
  return length(collected)
end
function day6()
  sumcount = 0
  collected = Set([])
  for line in readlines("day6.txt")
    println(collected)
    if length(line) == 0
      sumcount += count(collected)
      collected = Set([])
    end
    union!(collected, line)
  end
  sumcount += count(collected)
  return sumcount
end
println(day6())
