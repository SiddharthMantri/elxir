defmodule Hangman do
  alias Hangman.Game, as: Game # Could be used as alias Hangman.Game
  def new_game() do
    { :ok, pid } = Supervisor.start_child(Hangman.Supervisor, [])
    pid
  end
  # defdelegate tally(game), to:  Game
  # defdelegate make_move(game, guess), to: Game

  def tally(game_pid) do
    GenServer.call(game_pid, {:tally})
  end

  def make_move(game_pid, guess) do
    GenServer.call(game_pid, {:make_move, guess})
  end

end
