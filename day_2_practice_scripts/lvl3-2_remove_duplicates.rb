arr = [1, 1, 2, 2, 3, 4, 4]
unique = []

arr.each do |num|
  if unique.include?(num) == false
    unique.push(num)
  end
end

p unique