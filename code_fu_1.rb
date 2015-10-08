# Print the second highest element within a list of numbers input from the command line

ele = []
ARGV.each { |x| ele << x.to_i }

larg = ele[0]
sec_larg = 0
index_of_largest = 0

for i in 0...(ele.size-1)
  puts i
  if ele[i] > larg
    larg = ele[i]
    index_of_largest = i
  end
end

larg = ele[0]

for i in 0..(ele.size-1)
  if ele[i] > larg && i != index_of_largest
    sec_larg = ele[i]
  end
end

puts "Second highest element is: #{sec_larg}"



