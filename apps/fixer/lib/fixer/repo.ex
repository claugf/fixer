defmodule Fixer.Repo do
  use Ecto.Repo,
    otp_app: :fixer,
    adapter: Ecto.Adapters.Postgres
end
