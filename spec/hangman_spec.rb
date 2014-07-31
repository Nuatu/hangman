require 'rspec'
require 'hangman'
require 'word'
# require 'colorize'
require 'game'

describe 'Game' do
  it('create an instance of the Game class') do
    test_game = Game.new()
    expect(test_game).to be_an_instance_of Game
    expect(test_game.bad_count).to eq 0
    expect(test_game.attempts).to eq 0
  end
end

describe 'Hangman' do
  it('creates an instance of the Hangman class') do
    test_man = Hangman.new()
    expect(test_man).to be_an_instance_of Hangman
    expect(test_man.images.length).to eq 8
    expect(test_man.current_image).to eq test_man.images[0]
  end
end

describe 'Word' do
  it('creates an instance of the Word class') do
    test_word = Word.new()
      expect(test_word).to be_an_instance_of Word
      expect(test_word.current_word.length).to eq 0
    test_word.word_picker('sports')
      expect(test_word.current_word.length > 0).to eq true
  end
end
