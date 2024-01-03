defmodule Clex.MixProject do
  use Mix.Project

  @github_url "https://github.com/YannickFricke/clex"

  def project do
    [
      app: :clex,
      version: "0.0.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # ex_doc related stuff
      name: "Clex",
      source_url: @github_url,
      homepage_url: @github_url,
      docs: [
        main: "Clex",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # Used for code formatting
      {:styler, "~> 0.11", only: [:dev, :test], runtime: false},

      # Used for generating the documentation
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end
