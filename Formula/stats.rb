class Stats < Formula
  desc "Terminal dashboard for system metrics, Amp usage, and Codex usage"
  homepage "https://github.com/priyashpatil/stats"
  url "https://github.com/priyashpatil/stats/releases/download/v2026.8.5/stats-2026.8.5-macOS-arm64.tar.gz"
  sha256 "66594f5b8cb65a82acc3e49919f304c42ca5777ed96d8cac41bb9036f9aa57df"
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
