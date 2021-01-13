#!/usr/bin/env ruby

PATTERN = '++*~~*++*'

pattern = PATTERN

20.times do
  pattern = pattern[1..-1] + pattern[0]
  puts pattern
end

puts
puts "Using arrays with brackets and loops"
puts

pattern = PATTERN.split(//)

20.times do
  pattern = pattern[1..-1] + [pattern[0]]
  puts pattern.join
end


puts
puts "Using arrays with methods shift and push and loops"
puts

pattern = PATTERN.split(//)

20.times do
  first_character = pattern.shift
  puts pattern.push(first_character).join
end

