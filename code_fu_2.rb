# ‘Print the neighbors of an element in a 3x3 integer matrix, given as input from the command line’

a = [[],[],[]]

for i in 0..2
  for j in 0..2
    print "Enter a[#{i}][#{j}] = "
    a[i][j] = gets.chomp.to_i
  end
end

print "The matrix is: \n"
for i in 0..2
  for j in 0..2
    print " #{a[i][j]}"
  end
  print "\n"
end

neb = []
print "Choose an element: "
ele = gets.chomp.to_i
for i in 0..2
  for j in 0..2
    if ele == a[i][j]
      neb << a[i-1][j-1] if (i-1 >= 0 and j-1 >= 0) # 00
      neb << a[i-1][j] if (i-1 >= 0) # 01
      neb << a[i-1][j+1] if (i-1 >= 0 and j+1 < 3) # 02
      neb << a[i][j-1] if (j-1 >= 0) # 10
      neb << a[i][j+1] if (j+1 < 3) # 12
      neb << a[i+1][j-1] if (i+1 < 3 and j-1 >= 0) # 20
      neb << a[i+1][j] if (i+1 < 3) # 21
      neb << a[i+1][j+1] if (i+1 < 3 and j+1 < 3) # 22
      flag = 1
      break
    end
  end
  break if flag == 1  # exit when ele is found
end

puts "Neighbors: #{neb}"


# 00 01 02
# 10 11 12
# 20 21 22

