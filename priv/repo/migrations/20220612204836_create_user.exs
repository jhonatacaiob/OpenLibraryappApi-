defmodule OpenLibraryappApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user, primary_key: false) do

      add :uuid, :uuid, primary_key: true
      add :first_name, :varchar
      add :last_name, :varchar
      add :birthdate, :date
      add :password, :varchar
      add :is_admin, :boolean
      add :is_librarian, :boolean

      timestamps()
    end
  end
end
