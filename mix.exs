defmodule Todoist.MixProject do
  use Mix.Project

  def project do
    [
      app: :todoist,
      version: "0.1.0",
      elixir: "~> 1.14",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger, :tesla]]
  end

  defp description do
    """
    A simple Todoist Elixir wrapper
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Nando Sousa"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/nandosousafr/todoist",
        "Docs" => "https://github.com/nandosousafr/todoist"
      }
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:exvcr, "~> 0.15", only: :test},
      {:poison, "~> 5.0"},
      {:tesla, "~> 1.8"},
      {:uuid, "~> 1.1"}
    ]
  end
end
