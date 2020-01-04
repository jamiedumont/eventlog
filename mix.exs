defmodule MessageLog.MixProject do
  use Mix.Project

  def project do
    [
      app: :event_log,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
    Append log with indexing.
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["PB"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/pbudzik/eventlog",
              "Docs" => "http://hexdocs.pm/eventlog/"}
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
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
