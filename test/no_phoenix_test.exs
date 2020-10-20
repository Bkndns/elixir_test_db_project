defmodule NoPhoenixTest do
  use ExUnit.Case
  doctest NoPhoenix

  test "greets the world" do
    assert NoPhoenix.hello() == :world
  end
end
