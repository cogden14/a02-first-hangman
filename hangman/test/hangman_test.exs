defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  test "creates a game" do
    assert Hangman.new_game()
  end
end
