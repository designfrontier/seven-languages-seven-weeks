num = rand(10)
puts 'Guess a number between 1 and 10'

input = gets.chomp.to_i

unless input == num
	if input > num
		puts 'Your guess was too high'
	else
		puts 'Your guess was too low'
	end
	puts "The correct number was #{num}"
else
	puts 'You guessed it correctly!'
end
