class WordGuess
	attr_accessor :guesses_wrong

	def initialize(guesses_wrong)
		@guesses_wrong = guesses_wrong
	end

	def get_user_input
		# gets user input 
		# loop
	end

	def check_letter
		# if logic, correct vs incorrect
		# maybe a regex here to check 

		# if letter correct completes word, kick the user
		# to the correct YOU WIN method
	end

	def show_word
		# method to show progress banner
	end

	def show_strikes
		# visual representation of incorrect guesses 
	end

	def show_wrong_letters
		# displays list in alphabetical order of wrong guesses
	end

	def win
		# Happy cat win! 
	end

	def lose
		# Sad OH NO YOU LOSE cat
	end

end

puts "WELCOME TO THE BEST GAME EVER:"
puts "THE WORD GUESS GAME\n\n"
puts "HOW TO PLAY:"
puts "1) Enter a letter or word to guess."
puts "2) If the letter is in the word, it will be shown! YAY"
puts "3) If the letter is not in the word, you will lose a chance."
puts "4) You have ten chances to guess the correct word."
puts "GOOD LUCK!\n\n"







#                ________________
#               |                |_____    __
#               |                |     |__|  |_________
#               |________________|     |::|  |        /
#  /\**/\       |                \.____|::|__|      <
# ( o_o  )_     |                      \::/  \._______\
#  (u--u   \_)  |
#   (||___   )==\
# ,dP"/b/=( /P"/b\
# |8 || 8\=== || 8
# `b,  ,P  `b,  ,P
#   """`     """`
#  HANGMAN
# Display strikes (1-10)
# At the end OH NO YOU LOSE
# or CONGRATS YOU WIN