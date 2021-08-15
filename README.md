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

```#play_round```

### Player
The player may need a ```name```, but they should be able to ```::initialize```, ```::guess```, and ```::alert_invalid_guess```