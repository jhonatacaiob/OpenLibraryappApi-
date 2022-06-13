defmodule OpenLibraryappApi.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :title, :varchar
      add :isbn, :varchar
      add :cover, :varchar
      add :quantity, :integer
      add :publish_date, :date

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
