def repeat_twice
  puts "Start"
  yield
  yield
  puts "End"
end

repeat_twice do
  puts "Hello"
end
