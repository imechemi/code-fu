# Explode the string
# str = "Code"
# => "CCoCodCode"
#
# str = "abc"
# => "aababc"


str = gets.chomp()

def substr(str, _end)
  res = ""
  for i in 0.._end
    res += str[i]
  end
  res
end

xplode = ""
for i in 0..(str.size-1)
  xplode += substr(str,i)
end

p xplode

