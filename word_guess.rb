class WordGuess
	attr_accessor :guesses_wrong, :win

	def initialize
    @correct_word = %w(H A N G M A N)
    @guessing_array = %w(_ _ _ _ _ _ _)
		@guesses_wrong = 0
    @wrong_letters = []
    @counter = 0
		@win = false
	end

	def get_user_input
		# gets user input
    choice = "poop"
    until choice == "WORD" || choice == "LETTER"
      puts "Would you like to guess a word or a letter?"
      choice = gets.chomp.upcase
      if choice == "WORD"
        guess_word(choice)
      elsif choice == "LETTER"
        guess_letter(choice)
      else
        puts "Incorrect input."
      end
    end
	end

  def guess_word(choice)
    puts "What is your guess?"
    word_guess = gets.chomp.upcase
		word_guess = word_guess.split(//)
		if word_guess == @correct_word
      puts "Good job!"
			puts "YOU WIN"
			print @correct_word
			puts
			@win = true
    else
      puts "Sorry!"
      show_word
      @guesses_wrong += 1
			show_strikes
      # show_wrong_letters
		end
  end

  def guess_letter(choice)
  	puts "What is your guess?"
  	letter_guess = gets.chomp.upcase
  	check_letter(letter_guess)
  	if @counter == "on"
  		puts "That letter was right! Good job!"
  		show_word
  		@counter = "off"
  	else @counter == "off"
  		puts "Sorry this was a wrong letter!"
      show_word
      @guesses_wrong += 1
      show_strikes
      # show_wrong_letters
    end
  end

  def check_word

  end

	def check_letter(letter_guess)
		# if logic, correct vs incorrect
    # FIGURE THIS OUT WITH A LOOP TABLE
    if @correct_word.include? letter_guess
      @correct_word.each_with_index do |letter, index|
        if letter == letter_guess
          @guessing_array[index] = letter_guess
         	@counter = "on"
          # letter_guess replaces the value of guessing_array at that index
        end
      end
    end
    counter = "off"
		# maybe a regex here to check

		# if letter correct completes word, kick the user
		# to the correct YOU WIN method
	end

	def show_word
		# method to show word
		print @guessing_array
		puts
    # case
	end

	def show_strikes
	puts(<<-CAT)	
               ________________
              |                |_____    __
              |  STRIKE #{@guesses_wrong}      |     |__|  |_________
              |________________|     |::|  |        /
 /\\**/\\       |                \\.____|::|__|      <
( o_o  )_     |                      \\::/  \\._______\\
 (u--u   \\_)  |
  (||___   )==\\
,dP"/b/=( /P"/b\\
|8 || 8\\=== || 8
`b,  ,P  `b,  ,P
  """`     """`
  CAT
	end

	def show_wrong_letters
		# displays list in alphabetical order of wrong guesses
    # Array.sort will sort it alphabetically
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

# Shows the word blanks at the start of the program
# thing is a placeholder because reasons


thing = WordGuess.new
thing.show_word

until thing.win == true || thing.guesses_wrong == 10
	thing.get_user_input
end
if thing.guesses_wrong == 10
	puts "you tried too many times. SORRY"
	#call method lose
end


#   go to that position in the array and replace the _ with the letter with the same index
# end




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
