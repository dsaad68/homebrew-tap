# homebrew-tap

Homebrew tap for [dsaad68](https://github.com/dsaad68) tools - the `ripple` CLI and the `mispher`
macOS app. Both target Apple Silicon and macOS 26+ (Tahoe).

```sh
brew tap dsaad68/tap
```

You can also skip `brew tap` and use the fully-qualified names below directly.

## ripple

Experimental batteries-included agent with MLX and Apple Containers, pure Swift.

```sh
brew install dsaad68/tap/ripple
```

Project: https://github.com/dsaad68/ripple

## mispher

Voice to text, and an on-device agent for macOS - transcription, dictation cleanup, rewrite-in-place,
translation, and an agent that runs entirely on your Mac. No cloud, no accounts.

```sh
brew install --cask dsaad68/tap/mispher
```

`mispher` is a GUI app, so it installs as a **cask** (note the `--cask` flag). The download is a
Developer ID-signed, notarized `.dmg`.

Project: https://github.com/dsaad68/mispher

## Upgrading

```sh
brew update
brew upgrade ripple              # CLI
brew upgrade --cask mispher      # app
```

---

The `Formula/ripple.rb` and `Casks/mispher.rb` here are generated automatically by each project's
release workflow; do not edit them by hand. The source templates live in their respective projects.
