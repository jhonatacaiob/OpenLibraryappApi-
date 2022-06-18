defmodule OpenLibraryappApi.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :first_name, :varchar, null: false
      add :last_name, :varchar, null: false
      add :birthdate, :date, null: false
      add :biography, :text, null: false

      timestamps()
    end
  end
end
