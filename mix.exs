defmodule ElixirEnvironmentErrorTest.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_environment_error_test,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      aliases: [
        check1: [
          "test",
          "dialyzer",
          "credo",
        ],
        check2: [
          "dialyzer",
          "credo",
          "test",
        ],
      ],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
    ]
  end
end
