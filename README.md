# Homebrew Tap

Homebrew packages maintained by [Priyash Patil](https://github.com/priyashpatil).

## Stats

Install only the terminal dashboard:

```sh
brew install priyashpatil/tap/stats
```

Or install the self-contained macOS app:

```sh
brew install --cask priyashpatil/tap/stats &&
  xattr -dr com.apple.quarantine /Applications/Stats.app
```

Stats is ad-hoc signed but not Apple-notarized. The second command explicitly
removes macOS quarantine after Homebrew downloads and verifies the cask.

Upgrade the CLI after a new release with `brew upgrade priyashpatil/tap/stats`.
Upgrade the app with:

```sh
brew upgrade --cask priyashpatil/tap/stats &&
  xattr -dr com.apple.quarantine /Applications/Stats.app
```

The formula and cask check for new Stats releases daily and update automatically.
