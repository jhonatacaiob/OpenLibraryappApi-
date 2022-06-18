defmodule OpenLibraryappApi.Repo.Migrations.CreateBorrowed do
  use Ecto.Migration

  def change do
    create table(:borrowed, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :additional_note, :text, null: true
      add :devolution_date, :utc_datetime, null: false

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
      add :librarian_id, references(
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
