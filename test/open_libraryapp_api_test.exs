defmodule OpenLibraryappApiTest do
  use ExUnit.Case
  doctest OpenLibraryappApi

  test "greets the world" do
    assert OpenLibraryappApi.hello() == :world
  end
end
