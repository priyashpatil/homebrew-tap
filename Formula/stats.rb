class Stats < Formula
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"
  url "https://github.com/priyashpatil/stats/releases/download/v2026.8.3/stats-2026.8.3-macOS-arm64.tar.gz"
  version "2026.8.3"
  sha256 "598787a973f56ce72c1acfb9911094186ac8c2b7f9b1e1312eae5bd564f466a9"
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
