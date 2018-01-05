defmodule ElixirEnvironmentErrorTest do
  @moduledoc """
  Documentation for ElixirEnvironmentErrorTest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirEnvironmentErrorTest.hello
      :world

  """
  def hello do
    :world
  end
end

defmodule TestMod do
  def call do
    accept(9)
    accept(-3)
  end
  defp accept(number) when abs(number) >= 8 do # Guard test 0 | 1 | 2 | 3 >= 8 can never succeed
    :first
  end
  defp accept(number), do: :second
end
