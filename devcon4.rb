arr = "aa11b33 4..7".gsub(/\W/,'a')
 arr = arr.split(/[a-z]/)
 arr = arr.map { |c| c.to_i }
sum = 0
arr.inject(0) {|x| sum += x.to_i}
arr.each do |x|
  sum += x.to_i
end

p sum

