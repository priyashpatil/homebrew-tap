cask "stats" do
  version "2026.8.0"
  sha256 "0a149366c57657f2c478465fbc1017c3cac34793d6f536fca16460f8690c6b9a"

  url "https://github.com/priyashpatil/stats/releases/download/v#{version}/Stats-#{version}-macOS-arm64.zip"
  name "Stats"
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Stats.app"
end
