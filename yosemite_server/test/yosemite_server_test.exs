defmodule YosemiteServerTest do
  use ExUnit.Case
  doctest YosemiteServer

  test "greets the world" do
    assert YosemiteServer.hello() == :world
  end
end
