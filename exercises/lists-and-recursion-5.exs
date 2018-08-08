defmodule MyEnum do

  def all?([], _), do: true
  def all?([ head | tail ], func) do
    !!func.(head) && all?(tail, func)
  end

  def each([], _), do: :ok
  def each([head | tail ], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []
  def filter([ head | tail ], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end
end

list = [1,2,3,4,5,6]
IO.inspect MyEnum.filter(list, fn x -> x > 3 end)
