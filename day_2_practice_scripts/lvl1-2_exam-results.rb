print "What is your score?: "
score = gets.chomp.to_i
print "What is the total number of items?: "
items = gets.chomp.to_i

puts "Your score is #{score}" 
puts "The total number of items is #{items}"

percentage = (score.to_f/items)*100

puts "Your overall percentage is #{percentage}%"

if percentage > 90.0 && percentage < 100.0
  puts "Wow! You got an A"
elsif percentage > 80.0 && percentage < 89.0
  puts "Nice! You got a B"
elsif percentage > 70.0 && percentage < 79.0
  puts "Good job, you got a C"
elsif percentage < 70.0
  puts "Truy harder next time, you got an F"
end