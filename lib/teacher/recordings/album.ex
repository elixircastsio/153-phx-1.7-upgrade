defmodule Teacher.Recordings.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :summary, :string
    field :title, :string
    field :year, :integer

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:artist, :summary, :title, :year])
    |> validate_required([:artist, :summary, :title, :year])
  end
end
