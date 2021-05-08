defmodule IdenticonTest do
  use ExUnit.Case
  doctest Identicon

  test "does image match?" do
    assert Identicon.main("etl") == :ok
    {:ok, binary} = File.read("etl.png")
    assert :lists.sublist(:binary.bin_to_list(binary), 35, 4) == [0, 5, 210, 73]
    File.rm("etl.png")
  end
end
