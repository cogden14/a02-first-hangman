defmodule Hangman.Game do
    defmodule State do
    defstruct(
        turns_left: 7,
        status: :initializing,
        word: "",
        letters: "",
        used: "",
        last_guess: ""
    )
    end
    
    def new_game() do
       %Hangman.Game.State{
        turns_left: 7,
        status: :initializing,
        word: Dictionary.random_word(),
        letters: "",
        used: "",
        last_guess: ""
        }
    end

    def tally(game) do   
        %{
        t: ^turns_left,
        g: game_state,
        l: letters,
        u: used,
        lg: last_guess
        }
    end

    def make_move(game, guess) do
        :move
    end
end