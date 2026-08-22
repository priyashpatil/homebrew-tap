# Homebrew Tap

Homebrew packages maintained by [Priyash Patil](https://github.com/priyashpatil).

## Stats

Install the self-contained macOS app:

```sh
brew install --cask priyashpatil/tap/stats
```

Stats is ad-hoc signed but not Apple-notarized. If macOS blocks the first launch,
remove the quarantine attribute after reviewing the downloaded cask:

```sh
xattr -dr com.apple.quarantine /Applications/Stats.app
```

Upgrade it after a new release:

```sh
brew upgrade --cask priyashpatil/tap/stats
```
