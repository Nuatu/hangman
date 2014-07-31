class Word

  def initialize()
    @word_bank = {
      "sports" => ["football", "soccer", "baseball", "basketball"],
      "cars" => ["honda", "toyota", "kia", "chevy", "ford"]
    }
    @current_word = ""
  end

  # def word_bank
  #   @word_bank
  # end

  def current_word
    @current_word
  end

  def word_picker(genre)
    array = @word_bank[genre]
    top = array.length
    random = rand(top-1)
    @current_word = array[random]
  end
end
