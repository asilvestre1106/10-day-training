students = [
  {name: "Andre", grade: 95},
  {name: "John", grade: 60},
  {name: "Mary", grade: 88}
]

sum = students.sum {|stu| stu[:grade]}

p sum

