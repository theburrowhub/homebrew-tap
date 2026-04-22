class HeimdallmCli < Formula
  desc "CLI client for Heimdallm — monitor PRs, issues, and activity from the terminal"
  homepage "https://github.com/theburrowhub/heimdallm"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.1/heimdallm-cli_0.6.1_darwin_arm64.tar.gz"
      sha256 "5a60a722d14683175dde16d8c5dc67b75cc9b5b447e3ffa02e1781e5b1cf2b08"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.1/heimdallm-cli_0.6.1_darwin_amd64.tar.gz"
      sha256 "ed53ead18f4028dec25ce89c73039cd69508650a531f2cb88ab2f177b95eaaa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.1/heimdallm-cli_0.6.1_linux_arm64.tar.gz"
      sha256 "a071c5794248825e0abd954d9521f31df465454de79c1b77d0e8f714458d1644"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.1/heimdallm-cli_0.6.1_linux_amd64.tar.gz"
      sha256 "d1249674be12852973c90077565b8702c7ef0a4f919e323b60085719880a5cba"
    end
  end

  def install
    bin.install "heimdallm-cli"
  end

  test do
    system "#{bin}/heimdallm-cli", "--help"
  end
end
