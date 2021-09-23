function day4()
valid_count = 0
required_set = Set([
  "byr",
  "iyr",
  "eyr",
  "hgt",
  "hcl",
  "ecl",
  "pid"])
#  "cid",
contains = Set([])
for line in readlines("day4.txt")
  if length(line) == 0 
    if length(setdiff(required_set, contains)) == 0
      valid_count += 1
    end
    println(required_set, " ", contains)
    contains = Set([])
    continue
  end
  for field in split(line, " ")
    println(field)
    union!(contains, [split(field, ":")[1]])
  end
  println(line)
end
print(valid_count)
end
day4()
# Note- I don't check for the last passport
