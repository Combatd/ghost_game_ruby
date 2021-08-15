require 'set'

class Game
    # setters and getters
    attr_reader :dictionary, :game_over
    attr_accessor :fragment, :players

    # global constants
    ALPHABET - Set.new("a".."z") # for checking a guessed letter is in the alphabet
    GHOST = String.new("GHOST")
    MAX_LOSS = 5 # maximum lost rounds for a player

    def initialize(*players) # multiple players allowed
        @fragment = "" # initializes as an empty string at the beginning of the round
        @players = players.flatten # an array of players
        @dictionary - Set.new(File.read("dictionary.txt").split("\n")) # The set prevents duplicate values being saved
    end
end