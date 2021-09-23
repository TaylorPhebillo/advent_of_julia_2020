function count(collected)
  return length(collected)
end
function day6()
  sumcount = 0
  collected = Set([])
  for line in readlines("day6.txt")
    println(collected)
    if length(line) == 0 || length(collected) == 0
      sumcount += count(collected)
      collected = Set(line)
    end
    intersect!(collected, line)
  end
  sumcount += count(collected)
  return sumcount
end
println(day6())
