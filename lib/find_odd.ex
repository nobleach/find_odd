defmodule FindOdd do
  require Integer

  def find(list) do
    {res, _} = Enum.find list |> Enum.frequencies(), fn {_k, v} ->
      Integer.is_odd(v)
    end

    res
  end

end
