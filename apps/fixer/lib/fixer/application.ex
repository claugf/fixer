defmodule Fixer.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Fixer.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Fixer.PubSub}
      # Start a worker by calling: Fixer.Worker.start_link(arg)
      # {Fixer.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Fixer.Supervisor)
  end
end
