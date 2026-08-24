class Stats < Formula
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"
  url "https://github.com/priyashpatil/stats/releases/download/v2026.8.4/stats-2026.8.4-macOS-arm64.tar.gz"
  sha256 "7e96af75bf494a7b302b3d8afa35230f2f46b6a38a926a3f0fa5283e6a705472"
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
