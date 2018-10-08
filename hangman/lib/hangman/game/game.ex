defmodule Hangman.Game do
    defmodule State do
    defstruct(
        turns_left: 7,
        status: :initializing,
        word: "",
        letters: [],
        used: [],
        last_guess: ""
    )
    end
    
    def new_game() do
       %Hangman.Game.State{
        turns_left: 7,
        status: :initializing,
        word: Dictionary.random_word(),
        letters: [],
        used: [],
        last_guess: ""
        }
    end

    def tally(game) do   
        state = %{
        game_state: game.status,
        turns_left: game.turns_left,
        letters: game.letters,
        used: game.used
        }
    end

    def make_move(game, guess) do
        letters_original = game.letters
        updated_game = game.letters
        |> fill_letters(game.word, guess)
        |> has_changed(letters_original)
        |> next_state(game.turns_left, game.used, guess)
        |> get_and_update_state(game)
    end

    def fill_letters(letters, word, guess) do
        filler = Enum.map(word, fn x -> "_" | x != guess)

        #union must insert only set values from filler, like a right join
        letters_new = letters
        |> Enum.join(filler)
    end

    def has_changed(letters_new, letters_original) do
        letters_new !==letters_original
    end

    #:good_guess
    def next_state(true) do
    #change status to :good_guess
        :good_guess
    end

    #:bad_guess
    def next_state(false, turns_left, used, last_guess) do 
    #decrement turns_left, add to used
    #change status to :bad_guess

    end

    #:already_used
    def next_state(false) do  
    #change status to :already_used
        :already_used
    end

    def get_and_update_state(true, state) do
    #check if won
        state
    end

    def get_and_update_state(false, state) do
    #check if lost
        state
    end
end