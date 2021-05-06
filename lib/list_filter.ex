defmodule ListFilter do
  require Integer

  @spec call(list()) :: number()
  def call(list) do
    list
    |> Stream.map(&Integer.parse(&1))
    |> Stream.map(fn
      {number, _} -> number
      :error -> :error
    end)
    |> Enum.count(&Integer.is_odd(&1))
  end
end
