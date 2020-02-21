defmodule AdventOfCode2019.Solutions.Day01 do
  @spec part1 :: :ok
  def part1 do
    {:ok, content} = File.read(File.cwd!() <> "/lib/solutions/input1.txt")

    content
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(0, fn num, acc ->
      acc + (trunc(num / 3) - 2)
    end)
    |> IO.puts()
  end

  def part2 do
    {:ok, content} = File.read(File.cwd!() <> "/lib/solutions/input2.txt")

    content
    |> String.split("\n")
    |> Enum.map(&String.to_integer/1)
    |> Enum.reduce(0, fn num, acc ->
      acc + run_cal(num)
    end)
    |> IO.puts()
  end

  defp run_cal(num) do
    cal(trunc(num / 3) - 2, 0)
  end

  defp cal(num, sum) when num <= 0 do
    sum
  end

  defp cal(num, sum) do
    current_sum = sum + num
    cal(trunc(num / 3) - 2, current_sum)
  end
end
