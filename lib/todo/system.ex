defmodule Todo.System do
  def start_link do
    Supervisor.start_link(
      [
        Todo.ProcessRegistry,
        Todo.Database,
        Todo.Cache
      ],
      strategy: :one_for_one
    )
  end

  # using a callback module
  # use Supervisor

  # def start_link do
  #  Supervisor.start_link(__MODULE__, nil)
  # end

  # def init(_) do
  #  Supervisor.init([Todo.Cache], strategy: :one_for_one)
  # end
end
