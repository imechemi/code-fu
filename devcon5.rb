# Given a string, return the lenght of the large "block" in the string. A block is a run of adjacent chars that are
# the same.
#
# Examples
#
# maxBlock("hoopla")
# => 2
#
# maxBlock("abbCCCddBBBxx")
# => 3
#
# maxBlock("")
#
# => 0

def maxBlock(str)
  long = 0
  for i in 0...str.size
    loc_len = 0
    for j in i..str.size
      if str[j] == str[i]
        loc_len += 1
      else
        break
      end
    end
    long = loc_len if loc_len > long
  end
  return long
end

input = gets.chomp
p maxBlock(input)
