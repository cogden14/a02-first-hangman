defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  test "creates a game" do
    assert Hangman.new_game()
  end

  test "test and assert tally" do
    test_game = %Hangman.Game.State{
        turns_left: 7,
        status: :initializing,
        word: "functional",
        letters: "",
        used: "",
        last_guess: ""
  }
    assert Hangman.tally(test_game)
  end

  test "check has_changed() value" do
    letters = ["H","e","l","l","o"]
    changed_result = Hangman.Game.has_changed(letters, Enum.reverse(letters))
    IO.puts "Reversed letters changed: #{changed_result}"
    same_result = Hangman.Game.has_changed(letters, letters)
    IO.puts "Same letters changed: #{same_result}"
    
    assert changed_result
  end

  test "check fill_letters properly working" do
    letters = ["_"]
    word = ["H","e","l","l","o"]
    char_to_fill = "l"
    assert Hangman.Game.fill_letters(letters, word, char_to_fill)
  end
end
