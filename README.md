[![CI](https://github.com/codedge-llc/pigeon-legacy-fcm/actions/workflows/ci.yml/badge.svg)](https://github.com/codedge-llc/pigeon-legacy-fcm/actions/workflows/ci.yml)

# Pigeon Legacy FCM

> Pigeon adapter for Firebase Cloud Messaging Legacy API.

## Installation

Add `:pigeon` and `:pigeon_legacy_fcm` as `mix.exs` dependencies:

```elixir
def deps do
  [
    {:pigeon, "~> 2.0.0-rc.2"},
    {:pigeon_legacy_fcm, "~> 0.1.0"}
  ]
end
```

## Getting Started

Check the module documentation:

- [Pigeon.LegacyFCM](https://hexdocs.pm/pigeon/2.0.0-rc.2/Pigeon.LegacyFCM.html) - Firebase Cloud Messaging Legacy API.

## Contributing

### Testing

Unit tests can be run with `mix test` or `mix coveralls.html`. Environment variables will need to be set for
various credentials. See [config/test.exs](https://github.com/codedge-llc/pigeon/blob/main/config/test.exs)
for the full list.

### Formatting

This project uses Elixir's `mix format` and [Prettier](https://prettier.io) for formatting.
Add hooks in your editor of choice to run it after a save. Be sure it respects this project's
`.formatter.exs`.

### Commits

Git commit subjects use the [Karma style](http://karma-runner.github.io/5.0/dev/git-commit-msg.html).

## License

Copyright (c) 2024 Codedge LLC (https://www.codedge.io/)

This library is MIT licensed. See the [LICENSE](https://github.com/codedge-llc/pigeon-legacy-fcm/blob/main/LICENSE) for details.
