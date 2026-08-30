class Stats < Formula
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"
  url "https://github.com/priyashpatil/stats/releases/download/v2026.8.7/stats-2026.8.7-macOS-arm64.tar.gz"
  sha256 "f22540d66aeb9cf6fb2a873de724ab84f334f304cc4bd56fc623e29343da7cc6"
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
