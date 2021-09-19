treecount = 0
col = 1
for row in readlines("day3.txt")
  if row[col] == '#'
    global treecount += 1
  end
  println(row, " ", col, " ", row[col])
  global col = (col + 3) % (lastindex(row)+1)
  if col < 3
    global col += 1
  end
end
println(treecount)
