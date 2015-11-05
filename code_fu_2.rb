# ‘Print the neighbors of an element in a 3x3 integer matrix, given as input from the command line’

print "Enter row size (>3) :"
row = gets.chomp.to_i
print "Enter column size (>3) : "
col = gets.chomp.to_i

a = []
col.times { a << [] }

for i in 0..row-1
  for j in 0..col-1
    print "Enter a[#{i}][#{j}] = "
    a[i][j] = gets.chomp.to_i
  end
end

print "The matrix is: \n"
for i in 0..row-1
  for j in 0..col-1
    print "   #{a[i][j]}"
  end
  print "\n"
end

# 00 01 02
# 11 12 13
# 21 22 23

ch = 'y'
while ch === 'y'
  print "Choose an element: "
  ele = gets.chomp.to_i
  neb, flag = [], 0
  for i in 0..row-1
    for j in 0..col-1
      if ele == a[i][j]
        neb << a[i-1][j-1] if (i-1 >= 0 and j-1 >= 0) # 00
        neb << a[i-1][j] if (i-1 >= 0) # 01
        neb << a[i-1][j+1] if (i-1 >= 0 and j+1 < col) # 02
        neb << a[i][j-1] if (j-1 >= 0) # 10
        neb << a[i][j+1] if (j+1 < col) # 12
        neb << a[i+1][j-1] if (i+1 < col and j-1 >= 0) # 20
        neb << a[i+1][j] if (i+1 < col) # 21
        neb << a[i+1][j+1] if (i+1 < col and j+1 < col) # 22
        flag = 1
        break
      end
    end
    break if flag == 1  # exit when ele is found
  end
  puts "Neighbors: #{neb}"
  print "Find another one? [y/n]: "
  ch = gets.chomp.downcase
end

# 00 01 02
# 10 11 12
# 20 21 22

