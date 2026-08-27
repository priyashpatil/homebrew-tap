cask "stats" do
  version "2026.8.5"
  sha256 "ae2474e26d6cb1b16c66f7c62fb0f3502686ac5264ea80a08d3c08b2447b6d91"

  url "https://github.com/priyashpatil/stats/releases/download/v#{version}/Stats-#{version}-macOS-arm64.zip"
  name "Stats"
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Stats.app"

  caveats <<~EOS
    Stats is ad-hoc signed but not Apple-notarized. If macOS blocks the first launch,
    remove the quarantine attribute after reviewing the downloaded cask:
      xattr -dr com.apple.quarantine /Applications/Stats.app
  EOS
end
