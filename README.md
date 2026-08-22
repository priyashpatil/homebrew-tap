# Homebrew Tap

Homebrew packages maintained by [Priyash Patil](https://github.com/priyashpatil).

## Stats

Install the self-contained macOS app:

```sh
brew install --cask priyashpatil/tap/stats &&
  xattr -dr com.apple.quarantine /Applications/Stats.app
```

Stats is ad-hoc signed but not Apple-notarized. The second command explicitly
removes macOS quarantine after Homebrew downloads and verifies the cask.

Upgrade it after a new release:

```sh
brew upgrade --cask priyashpatil/tap/stats &&
  xattr -dr com.apple.quarantine /Applications/Stats.app
```

The cask checks for new Stats releases daily and updates automatically.
