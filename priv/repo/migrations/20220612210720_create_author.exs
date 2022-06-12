defmodule OpenLibraryappApi.Repo.Migrations.CreateAuthor do
  use Ecto.Migration

  def change do
    create table(:author, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :first_name, :varchar
      add :last_name, :varchar
      add :birthdate, :date
      add :biography, :text

      timestamps()
    end
  end
end
