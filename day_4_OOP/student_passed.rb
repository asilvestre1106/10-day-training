class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  attr_accessor:name
  attr_accessor:grade

  def show_info
    puts "Name: #{@name}"
    puts "Grade: #{@grade}"
  end

  def passed?
    @grade >= 75
  end

  def letter_grade
    if @grade >= 90 
      "A"
    elsif @grade >= 80
      "B"
    elsif @grade >=75
      "C"
    else
      "F"
    end
  end
end

student = Student.new("Andre", 87)
puts student.name
puts student.grade
puts student.letter_grade

student.grade = 95

puts student.letter_grade
