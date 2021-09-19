re = r"(\d+)\-(\d+) (.): (.*)"
function isValidPW2(index1, index2, char, pw)
  match1 = pw[index1] == char
  match2 = pw[index2] == char
  println(match1, " ", match2)
  if match1 ⊻ match2
    return 1
  end
  return 0
end
function isValidPW1(min, max, char, pw)
  occurences = count(i->(i==char), pw)
  if occurences >= min && occurences <= max
    return 1
  end
  return 0
end
numValid1 = 0
numValid2 = 0
for pw in readlines("day2.txt")
  m = match(re, pw)
  global numValid1 += isValidPW1(parse(Int64, m.captures[1]), parse(Int64, m.captures[2]), only(m.captures[3]), m.captures[4])
  global numValid2 += isValidPW2(parse(Int64, m.captures[1]), parse(Int64, m.captures[2]), only(m.captures[3]), m.captures[4])
end
println(numValid1)
println(numValid2)
