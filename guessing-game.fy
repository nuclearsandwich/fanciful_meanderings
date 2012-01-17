#!/usr/bin/env fancy
# A simple guessing game written in Fancy.

remaining-guesses = 6
Console println: "Welcone to the game!"

random-number = rand(100) + 1

while: { remaining-guesses > 0 } do: {
  Console println: "You have #{remaining-guesses} guesses remaining."
  guess = Console readln: "Guess a number: " to_i
  Console println: "You guessed #{guess}."

  random-number == guess. if_true: {
    "You won!" println
  } else: {
    random-number > guess. if_true: {
      "Too low." println
    } else: {
      "Too high."println
    }
  }
  remaining-guesses = remaining-guesses - 1
  Console println: ""
}

  "It was #{random-number}!" println
