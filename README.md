# homebrew-noema

Homebrew tap for [Noema](https://github.com/Fail-Safe/Noema) — the intentional memory layer for your AI agents.

## Install

```bash
brew install Fail-Safe/noema/noema
```

This works on **macOS** (via Homebrew) and **Linux** (via Linuxbrew). The formula downloads the pre-built binary from the matching [GitHub Release](https://github.com/Fail-Safe/Noema/releases) and drops it on your `$PATH`.

### Verify the install

```bash
noema version
```

### macOS: Cask alternative

A Homebrew Cask is also published to this tap for macOS users who prefer the cask ecosystem:

```bash
brew install --cask Fail-Safe/noema/noema
```

Both paths install the same binary. Linux users should stick with the formula path above — Homebrew Cask is macOS-only.

## Upgrade

```bash
brew update
brew upgrade noema
```

## About this tap

This repository is auto-maintained by [GoReleaser](https://goreleaser.com/) on every release tag cut in the upstream [Fail-Safe/Noema](https://github.com/Fail-Safe/Noema) repository. Formulas and casks land here automatically when a `v*` tag is pushed.

**Don't open PRs here directly** — upstream fixes belong in the main repo. This tap is purely a publishing target.

## License

MIT — see [LICENSE](./LICENSE). Matches the upstream [Noema license](https://github.com/Fail-Safe/Noema/blob/main/LICENSE).
