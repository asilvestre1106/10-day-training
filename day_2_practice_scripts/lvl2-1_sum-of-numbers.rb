print "Enter a number: "
num = gets.chomp.to_i

sum = 0

for i in 1..num
  sum += i
  if i == num
    print "#{i}"
  else
    print "#{i}+"
  end
end

print "=#{sum}\n"