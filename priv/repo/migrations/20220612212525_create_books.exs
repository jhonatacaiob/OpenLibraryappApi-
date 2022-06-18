defmodule OpenLibraryappApi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :title, :varchar, null: false
      add :isbn, :varchar, null: false
      add :cover, :varchar, null: false
      add :quantity, :integer, null: false
      add :publish_date, :date, null: false

      add :author_id, references(
        "authors",
        column: :uuid,
        type: :uuid,
        on_update: :nothing,
        on_delete: :nothing,
      )

      timestamps()
    end
  end
end
