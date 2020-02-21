alias AdventOfCode2019.Solutions.Day01

defmodule AdventOfCode2019 do
  use Application

  @spec start(any, any) :: {:error, any} | {:ok, pid}
  def start(_type, _args) do
    with :ok <- IO.puts("Day:"),
         day <- IO.read(:stdio, :line),
         :ok <- IO.puts("Part:"),
         part <- IO.read(:stdio, :line) do
      case {String.trim(day), String.trim(part)} do
        {"1", "1"} -> Day01.part1()
        {"1", "2"} -> Day01.part2()
        _ -> IO.puts("Invalid input")
      end
    end

    Supervisor.start_link([], strategy: :one_for_one)
  end
end
