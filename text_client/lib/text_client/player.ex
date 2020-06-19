defmodule TextClient.Player do
    
    alias TextClient.{State, Summary, Prompter, Mover}

    def play(%State{tally: %{game_state: :won}}) do
        exit_with_message("You won!! Congratulations!")
    end
    
    def play(%State{tally: %{game_state: :lost}}) do
        exit_with_message("Shucks! Better luck next time")
    end

    def play(game = %State{tally: %{game_state: :good_guess}}) do
        continue_with_message("Good guess", game)
    end

    def play(game = %State{tally: %{game_state: :bad_guess}}) do        
        continue_with_message("Sorry! Try again!!!!!!", game)
    end

    def play(game = %State{tally: %{game_state: :already_used}}) do        
        continue_with_message("You've already used that letter", game)
    end
    
    def play(game) do
        continue(game)
    end    

    def continue(game) do
        game
        |> Summary.display()
        |> Prompter.accept_move()
        |> Mover.make_move()
        |> play
    end

    def continue_with_message(msg, game) do
        IO.puts(msg)
        continue(game)
    end        

    defp exit_with_message(msg) do
        IO.puts(msg)
        exit(:normal)
    end
    

end