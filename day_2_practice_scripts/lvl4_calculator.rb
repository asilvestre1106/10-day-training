def add(x, y)
  return x+y
end
def subtract(x, y)
  return x-y
end
def mult(x, y)
  return x*y
end
def divide(x, y)
  return x/y
end

is_on = true
count = 0

while is_on == true do 
  puts "\nPlease enter an option: "
  puts "1. Addition"
  puts "2. Subtraction"
  puts "3. Multiplication"
  puts "4. Division"
  puts "5. Exit"
  print "Option number: "
  num = gets.chomp.to_i
  if num == 5
    break
  end

  print "Please enter your first number: "
  x = gets.chomp.to_f
  print "Please enter your second number: "
  y = gets.chomp.to_f

  case num
  when 1
    puts "Result: #{add(x, y)}"
  when 2
    puts "Result: #{subtract(x, y)}"
  when 3
    puts "Result: #{mult(x, y)}"
  when 4
    puts "Result: #{divide(x, y)}"
  else
    puts "Please enter a valid number"
  end

  count += 1
end

puts "Calculations performed: #{count}"