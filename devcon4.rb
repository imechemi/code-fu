# Given a string, find the sum of all numeric seperated by alphabets and special characters
#
# Examples
#
# input = "1a3"
# => Sum = 4
#
# input = "aa11b33 4..7"
# => Sum = 55
#
# input = "a22 ..*3\"
# => Sum = 25

input = gets.chomp.gsub(/\W/,'a')
arr = input.split(/[a-z]/)
p "Sum = #{arr.inject(0){|sum,x| sum += x.to_i}}"




