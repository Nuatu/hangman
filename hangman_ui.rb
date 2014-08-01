require './lib/game'
require './lib/hangman'
require './lib/word'

@current_category = ""
@guess_arr = []

def main_menu
  new_game = Game.new()
  new_man = Hangman.new()
  new_word = Word.new()

  genre = prompt("Welcome to Hangman!\n'1' for sports\n'2' for cars\n\n")
  if genre.to_i == 1
    current_category = ('SPORTS')
    new_word.word_picker('sports')
  elsif genre.to_i == 2
    current_category = ('CARS')
    new_word.word_picker('cars')
  end

  1.upto(new_word.current_word.length) do
    @guess_arr.push('_')
  end

  loop do
    # system('clear')
    puts "Your current category is: " + @current_category
    puts new_man.current_image

    puts new_word.current_word.join
    guess = prompt("\nPick a letter!")
      # if new_word.current_word.index(letter) == true

    print "\n\n"

    new_word.current_word.each_with_index do |letter, index|
      if guess == letter
        @guess_arr[index] = letter
        new_game.attempts + 1
      else
        new_game.bad_count += 1
        new_game.attempts += 1
        new_man.images[new_game.bad_count]
      end
    end

    puts @guess_arr.join(" ")
    puts new_word.current_word.join
    puts "Attempts: " + new_game.attempts.to_s
    puts "Wrong guesses: " + new_game.bad_count.to_s


  end
end


def prompt(message)
  print message
  gets.chomp
end

main_menu
