# Give an array of number, if a number is multiple of 10 then replace it's consecutive
# numbers with it's own value.
# Examples
#
# numbers = [1, 20, 3, 4, 50, 3 10]
# => [1, 20, 20, 20, 50, 50, 10]
#
# numbers = [10, 2, 100, 3, 4]
# => [10, 10, 100, 100, 100]

str = gets.chomp()
numbers = str.split(" ").map{|x| x.to_i}
@num = numbers
def haha(start)
  for i in (start+1)..@num.size-1
    if @num[i] % 10 == 0
      break
    else
      @num[i] = @num[start]
    end
  end
end

for i in 0..@num.size-1
  if @num[i] % 10 == 0
    haha(i)
  end
end

puts @num.join(" ")



