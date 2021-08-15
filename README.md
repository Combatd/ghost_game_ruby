# Ghost Game: Word Fragments
Terminal game where players add letters to a word fragment avoiding completing a valid word

# Learning Goals
* Understand interactions between multiple classes
* Modularize classes to different files and connect them using ```require_relative```
* Test methods in a REPL
* Read lines from a text file
* Understand the ```__FILE___ == $PROGRAM_NAME```

## Phase 1: First Round
We need to play a single round of Ghost before thinking about a full game of Ghost. We will need 2 players, but tracking scores can be left for later.

* The ```Game``` object needs to be instantiated as a singleton, with 2 ```Player``` instances passed in.
* Both players will add a letter to the ```fragment``` each turn. ```Game``` validates answers before changing ```fragment```.
* The ```Game``` checks ```fragment``` with a ```dictionary```, and if the previous player's guess made ```fragment``` match a word in the ```dictionary```, they lose.

### Game

```#initialize```

```@players```, ```@fragment```, and ```@dictionary``` are instance variables, and we can use a Hash or Set for fast reads from memory.

```#play_round```
All of the game logic should be located in this instance method.
* ```#current_player```
* ```#previous_player```
* ```#next_player!``` will update ```current_player``` and ```previous_player```
* ```#take_turn(player)``` will get a string from the player until it is a valid string, then updates the fragment and checks the dictionary. An error message about invalid guesses would be great to put here.
*```#valid_play?(string)``` will check the ```string``` is an alphabetical character, and there are words spellable when adding it to the ```fragment```.

### Player
The player may need a ```name```, but they should be able to ```::initialize```, ```::guess```, and ```::alert_invalid_guess```