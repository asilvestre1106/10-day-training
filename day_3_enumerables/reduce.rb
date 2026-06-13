numbers = [2, 3, 4, 5]

product = numbers.reduce(1) do |total, num|
  total*num
end

p product