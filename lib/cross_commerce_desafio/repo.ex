defmodule CrossCommerceDesafio.Repo do
  use Ecto.Repo,
    otp_app: :cross_commerce_desafio,
    adapter: Ecto.Adapters.Postgres

  @spec init(any, keyword) :: {:ok, [{atom, any}, ...]}
  def init(_, config) do
    config =
      config
      |> Keyword.put(:username, System.get_env("PGUSER"))
      |> Keyword.put(:password, System.get_env("PGPASSWORD"))
      |> Keyword.put(:database, System.get_env("PGDATABASE"))
      |> Keyword.put(:hostname, System.get_env("PGHOST"))
      |> Keyword.put(:port, System.get_env("PGPORT") |> String.to_integer())

    {:ok, config}
  end
end
