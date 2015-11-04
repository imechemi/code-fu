# Print the second highest element within a list of numbers input from the command line

elements = ARGV.map { |x| x.to_i }
second_largest, largest = elements[0], elements[0]

elements.each do |ele|
  second_largest = ele if ele < second_largest
  largest = ele if ele > largest
end

elements.each { |ele| second_largest = ele if ele > second_largest && ele != largest }
puts "Second Largest element is #{second_largest}" if second_largest != largest
puts "Second largest doesn't exist!!" if second_largest == largest



