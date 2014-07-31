require 'rspec'
require 'hangman'
require 'word'
require 'colorize'
require 'game'

describe 'Game' do
  it('create an instance of the game class') do
    test_game = Game.new()
    expect(test_game).to be_an_instance_of Game
    expect(test_game.starting).to eq 'start'
  end
end
