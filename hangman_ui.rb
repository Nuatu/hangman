require './lib/game'
require './lib/hangman'
require './lib/word'



def main_menu
  #call initial hangman image "hangman.image[bad guess count]--to include
  new_game = Game.new()
  new_man = Hangman.new()
  new_word = Word.new()
  current_category = ""
  guess_arr = []
  loop do
    system('clear')
    puts "Your current category is: " + current_category
    puts new_man.current_image
    if current_category.length != 0
      print "\n\n"
      1.upto(new_word.current_word.length) do
        guess_arr.push("_")
      end
      puts guess_arr.join(" ")
      puts new_word.current_word
      puts "Attempts: " + new_game.attempts.to_s
      puts "Wrong guesses: " + new_game.bad_count.to_s

      letter = prompt("\nPick a letter!")
        # if new_word.current_word.index(letter) == true

    else
      genre = prompt("Welcome to Hangman!\n'1' for sports\n'2' for cars\n\n")

      if genre.to_i == 1
        current_category = ('SPORTS')
        new_word.word_picker('sports')
      elsif genre.to_i == 2
        current_category = ('CARS')
        new_word.word_picker('cars')
      end
    end
  end
end


def prompt(message)
  print message
  gets.chomp
end

main_menu
