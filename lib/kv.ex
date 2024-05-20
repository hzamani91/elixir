defmodule KV do
  use Application
  alias UUID

  def start(_type,_args) do
    KV.main()
    Supervisor.start_link([],strategy: :one_for_one)
  end

  def main do
    a = 10
    b = 3.0
    IO.puts((a+b))
  end
end
