cask "stats" do
  version "2026.9.2"
  sha256 "f172edbaea3e3d2211d0aecf5113d5b1ee78cd4a72493a70694a062a64f6da40"

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
