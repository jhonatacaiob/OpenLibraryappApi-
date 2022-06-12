defmodule OpenLibraryappApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  # require Logger


  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: OpenLibraryappApi.Worker.start_link(arg)
      # {OpenLibraryappApi.Worker, arg}
      OpenLibraryappApi.Repo,
    ]

    # Logger.info("Starting application...")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OpenLibraryappApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
