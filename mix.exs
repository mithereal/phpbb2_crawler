defmodule Phpbb2Crawler.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/mithereal/phpbb2_crawler"

  def project do
    [
      app: :phpbb2_crawler,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      name: "Phpbb2 Crawler",
      source_url: @source_url,
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "A production-grade recursive web crawler and scraper for legacy phpBB2 forums, built with Elixir, Finch, and Floki."
  end

  defp package do
    [
      name: "phpbb2_crawler",
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE),
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "Phpbb2Crawler",
      extras: ["README.md"]
    ]
  end

  defp deps do
    [
      {:finch, "~> 0.16"},
      {:floki, "~> 0.35"},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end