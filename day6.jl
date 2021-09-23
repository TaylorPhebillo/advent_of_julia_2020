function count(collected)
  println(collected, " ", length(collected))

  return length(collected)
end
function day6()
  sumcount = 0
  collected = Set([])
  init = true
  for line in readlines("day6.txt")
    println(collected)
    if init
      collected = Set(line)
      init = false
    end
    if length(line) == 0
      init = true
      sumcount += count(collected)
      #collected = Set(line)
    end
    intersect!(collected, line)
  end
  sumcount += count(collected)
  return sumcount
end
println(day6())
