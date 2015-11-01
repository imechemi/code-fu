# Given an array of ints, find all the sets of numbers whose sum=10
#
# Examples
#
# sum({1,2,3,5,8})
# => (2,8)
#
# sum({1,9,3,7,3,8})
# => (1,9),(3,7)
#
# sum({5,5,5,5,5,5,5})
# => (5,5),(5,5),(5,5)

def sum(set)
  included = []
  res = []
  for i in 0...set.size
    for j in i+1...set.size
      if (set[i] + set[j]) == 10 and !included.include? i and !included.include? j
        included << i << j
        res << "(#{set[i]}, #{set[j]})"
      end
    end
  end
  res
end

numbers = gets.chomp.split.map{|x| x.to_i}

p sum(numbers).join(",")

