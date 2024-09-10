defmodule Pigeon.LegacyFCM.Mixfile do
  use Mix.Project

  @source_url "https://github.com/codedge-llc/pigeon-legacy-fcm"
  @version "0.1.0"

  def project do
    [
      app: :pigeon_legacy_fcm,
      build_embedded: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      dialyzer: dialyzer(),
      docs: docs(),
      elixir: "~> 1.7",
      elixirc_options: [warnings_as_errors: true],
      elixirc_paths: elixirc_paths(Mix.env()),
      name: "Pigeon Legacy FCM",
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      source_url: @source_url,
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: @version
    ]
  end

  defp elixirc_paths(:dev), do: ["lib", "test/support"]
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:earmark, "~> 1.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.5", only: :test, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:jason, "~> 1.0", optional: true},
      {:joken, "~> 2.1"},
      {:pigeon, "~> 2.0.0-rc.3"}
    ]
  end

  defp docs do
    [
      groups_for_modules: [
        "Legacy Firebase Cloud Messaging": [
          Pigeon.LegacyFCM,
          Pigeon.LegacyFCM.Notification
        ]
      ],
      main: "Pigeon.LegacyFCM"
    ]
  end

  defp description do
    """
    Pigeon adapter for Firebase Cloud Messaging Legacy API.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      links: %{
        "Changelog" => "https://hexdocs.pm/pigeon-legacy-fcm/changelog.html",
        "GitHub" => @source_url
      },
      maintainers: ["Henry Popp"]
    ]
  end

  defp dialyzer do
    [
      plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
    ]
  end
end
