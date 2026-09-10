class Stats < Formula
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"
  url "https://github.com/priyashpatil/stats/releases/download/v2026.9.2/stats-2026.9.2-macOS-arm64.tar.gz"
  sha256 "45137e0a3e370b0a3232a7265b14ac67ca090d7480f59471ad5b5b871b289c50"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  def install
    bin.install "stats"
  end

  test do
    assert_match "Amp, Codex, and system stats", shell_output("#{bin}/stats --help")
  end
end
