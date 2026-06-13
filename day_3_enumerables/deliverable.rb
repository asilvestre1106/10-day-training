students = [
  {name: "Andre", grade: 95},
  {name: "John", grade: 60},
  {name: "Ced", grade: 88}
]

passing_grade = 75

puts "1. Add Student"
puts "2. Show Student Names"
puts "3. Show Passing students"
puts "4. Show Failing Students"
puts "5. Exit"

is_on = true

while is_on == true do

  print "Please select and option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Name of Student: "
    name = gets.chomp
    print "Grade of Student: "
    grade = gets.chomp.to_i
    new_student = {
      name: name,
      grade: grade
    }
    students.push(new_student)
  when 2
    names_only = students.map {|stu| stu[:name]}
    puts "Students: #{names_only}"
  when 3
    result = students.select {|stu| stu[:grade]>=passing_grade}
    puts result
  when 4
    result = students.select {|stu| stu[:grade]<passing_grade}
    puts result
  when 5
    is_on = false
  end
end

print "Did anyone fail?: "
failing_grade = students.any? do |stu|
  stu[:grade] <= passing_grade
end
if failing_grade == true
  puts "Yes"
else
  puts "No"
end

print "Did everyone pass?: "
everyone_pass = students.all? do |stu|
  stu[:grade] >= passing_grade
end
if everyone_pass == true
  puts "Yes"
else
  puts "No"
end

sum = students.reduce(0) do |total, stu|
  total + stu[:grade]
end
average = sum/students.size
puts "Average grade: #{average}"

