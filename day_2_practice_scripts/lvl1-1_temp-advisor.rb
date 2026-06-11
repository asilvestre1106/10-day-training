puts "What is the temperature for today?\n"
response = gets.chomp.to_i

if response <= 20 
  puts "It is cold today"
elsif response > 20 && response < 30
  puts "It is warm today"
elsif response >= 30 
  puts "It is hot today"
else
  puts "Please input a valid number"
end

