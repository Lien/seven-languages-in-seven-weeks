# Program that picks a random number and prompts a player to guess the number,
# telling the player whether the guess is too low or too high.
x = rand(10)
while true do
	puts "Guess a number from 0 to 9"
	y = gets.to_i
    if y == x then
		puts "Bravo, you did it!"
		break
	else
		puts "Wrong, try again!"
	end
end
