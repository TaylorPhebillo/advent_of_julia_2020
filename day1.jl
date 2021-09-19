nums = Set()
for n in readlines("day1.txt")
#  println(n)
  push!(nums, parse(Int64, n))
end
for x in nums
  for y in nums
    if x + y == 2020 && x < y
      println(x *  y)
    end
  end
end
for x in nums
  for y in nums
    for z in nums
      if x + y + z == 2020 && x <= y && y <= z
        println(x * y * z)
      end
    end
  end
end
