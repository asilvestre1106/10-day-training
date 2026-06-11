print "Please enter 5 numbers\n"

numbers = Array.new

for i in 1..5 
  print "Enter number #{i}: "
  num = gets.chomp.to_i
  numbers.push(num)
end

p numbers

largest = numbers[0]
smallest = numbers[0]

for i in 0..4
  if numbers[i] >= largest
    largest = numbers[i]
  end
  if numbers[i] <= smallest
    smallest = numbers[i]
  end
end

puts "Largest number: #{largest}"
puts "Smallest number: #{smallest}"
