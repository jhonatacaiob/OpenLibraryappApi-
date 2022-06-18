defmodule OpenLibraryappApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :first_name, :varchar, null: false
      add :last_name, :varchar, null: false
      add :birthdate, :date, null: false
      add :password, :varchar, null: false
      add :is_admin, :boolean, null: false
      add :is_librarian, :boolean, null: false


      timestamps()
    end
  end
end
