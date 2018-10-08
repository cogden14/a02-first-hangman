defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  defmodule TestStruct do
  test_game = %Hangman.Game.State{
        turns_left: 7,
        status: :initializing,
        word: "functional",
        letters: "",
        used: "",
        last_guess: ""
  }
  end
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
    assert Hangman.Game.has_changed(letters, Enum.reverse(letters))
  end
end
