students = []

puts "Here is the list of options"
puts "1. Add Student"
puts "2. View Students"
puts "3. Find Highest Grade"
puts "4. Exit"

is_on = true

while is_on == true do
  print "Please select an option: "
  num = gets.chomp.to_i
  if num == 4
    puts "Thank you"
    break
  end

  case num
  when 1
    print "Student name: "
    name =gets.chomp
    print "Grade: "
    grade = gets.chomp.to_i
    student = {
      name: name,
      grade: grade
    }
    students.push(student)
    p students
  when 2
    students.each do |student|
      puts "Name: #{student[:name]}"
      puts "Grade: #{student[:grade]}"
    end
  when 3
    highest = students[0] 
    students.each do |student|
      if student[:grade] >= highest[:grade]
        highest = student
      end
    end
    puts "Highest grade student:"
    puts "Name: #{highest[:name]}"
    puts "Grade: #{highest[:grade]}"
  when 4
    puts "Thank you"
    is_on = false
  end
end