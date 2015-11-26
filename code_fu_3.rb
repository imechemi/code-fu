# Print the last index where you are able to form "AUTOBOT", given a string as input. The letters making up ‘AUTOBOT’
# need not be in order, index starts with 0
#
# Sample inputs -
# HATJFUJBQWOOLSTSD => 14
# AUTOBO => -1
# TOBAOERT CKTABUS => 14
# AUTOBOTAUTOBOT => 6

REQ = ['A','U','T','O','B','O','T']

def too_much(t)
  time = 0
  @found.each { |c| time += 1 if (c == t )}
  time >= 2 ? true : false
end

def occured_at_index(str)
  index = -1
  @found = []
  str.each_char.with_index(0) do |c, i|
    if (REQ.include? c) && (!@found.include? c)
      @found << c
    elsif (c == 'O' || c == 'T') && (!too_much c )
      @found << c
    end
    index +=1
    break if @found.sort == REQ.sort
  end
  index
end

# Starts here
str = gets.chomp.upcase
if str.length < REQ.length
  p "-1"
else
 p occured_at_index(str)
end


