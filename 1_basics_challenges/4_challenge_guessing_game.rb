bar = "-"
welcome_message = "| Ruby Guessing Game |"
bar_length = welcome_message.length
instructions = "We are going to play a guessing game.\n"\
  "I will choose a random number between 1 and 10\n"\
  "and you will have three chances to guess it.\n"\
  "Okay, I have my number.\n"


bar_length.times { print bar }
puts
puts welcome_message
bar_length.times { print bar }
puts

print "What is your name? "
name = gets.chomp
random_number = rand(1..10)
puts "Hello #{name}"
puts instructions

chances = 3
chances.times do |ch|
  print "Guess #{ch + 1}: "
  user_number = gets.chomp.to_i
  if user_number == random_number
    puts
    abort("Thats correct!! my number is #{user_number}\nGoodbye!")
  end
  puts "Sorry, that wasn't it."
end

puts
puts "That was your last guess."
puts "My number was #{random_number}"
puts "Goodbye!"


