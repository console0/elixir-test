defmodule Clock.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clock,
      version: "0.2.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Clock.Application, []}
    ]
  end

  defp deps do
    [
      {:distillery, "~> 2.0"}
    ]
  end
end
