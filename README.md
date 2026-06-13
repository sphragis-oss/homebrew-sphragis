# Homebrew Tap for Sphragis

EU AI Act compliance gateway: a drop-in OpenAI/Anthropic proxy that redacts
PII and secrets locally and writes a tamper-evident, hash-chained audit log.

## Install (macOS)

```sh
brew install --cask sphragis-oss/sphragis/sphragis
```

This tap ships a **Cask** (a prebuilt binary), so it is macOS-only. On Linux,
use the install script or build from source. See the main project README:
[sphragis-oss/sphragis](https://github.com/sphragis-oss/sphragis).

The Cask here is published automatically by GoReleaser on each release of the
main project.
