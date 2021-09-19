function checkTrees(rowΔ, colΔ)
  treecount = 0
  col = 1
  rownum = 0
  for row in readlines("day3.txt")
    rownum += 1
    if (rownum % rowΔ) == 0

      if row[col] == '#'
        treecount += 1
      end
    end
#    println(row, " ", col, " ", row[col])
    col = (col + colΔ) % (lastindex(row)+1)
    if col < colΔ
      col += 1
    end
  end
  return treecount
end


println(
	checkTrees(1, 1), " ",
	checkTrees(1, 3), " ",
	checkTrees(1, 5), " ",
	checkTrees(1, 7), " ",
	checkTrees(2, 1))

