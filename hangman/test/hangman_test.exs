defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  game = %Hangman.Game.State{
        turns_left: 7,
        status: :initializing,
        word: "struct",
        letters: "",
        used: "",
        last_guess: ""
  }
  test "creates a game" do
    assert Hangman.new_game()
  end

  test "test and assert tally" do
    assert Hangman.tally(game)
end
