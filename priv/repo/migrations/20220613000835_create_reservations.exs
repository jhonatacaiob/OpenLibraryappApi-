defmodule OpenLibraryappApi.Repo.Migrations.CreateReservations do
  use Ecto.Migration

  def change do
    create table(:reservations, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :pickup_date, :utc_datetime, null: false

      add :book_id, references(
        "books",
        column: :uuid,
        type: :uuid,
        on_update: :nothing,
        on_delete: :nothing,
      )
      add :user_id, references(
        "users",
        column: :uuid,
        type: :uuid,
        on_update: :nothing,
        on_delete: :nothing,
      )

      timestamps()
    end
  end
end
