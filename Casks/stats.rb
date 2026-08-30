cask "stats" do
  version "2026.8.7"
  sha256 "8b5f8682bb9d02b117c0a88b5bdf4845f24311a62f25e4990db250bf03ab2281"

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
