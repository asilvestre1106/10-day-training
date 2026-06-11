password = "technavy"

i = 0
print "What is the hidden password?: "
while gets.chomp != password do
  print "Wrong password, try again!: "
  i += 1
end

puts "That's right the password is #{password}"
puts "Number of attempts: #{i}"