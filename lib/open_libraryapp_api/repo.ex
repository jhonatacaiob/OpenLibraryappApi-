defmodule OpenLibraryappApi.Repo do
  use Ecto.Repo,
    otp_app: :open_libraryapp_api,
    adapter: Ecto.Adapters.Postgres
end
