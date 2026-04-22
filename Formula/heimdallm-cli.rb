class HeimdallmCli < Formula
  desc "CLI client for Heimdallm — monitor PRs, issues, and activity from the terminal"
  homepage "https://github.com/theburrowhub/heimdallm"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.0/heimdallm-cli_0.6.0_darwin_arm64.tar.gz"
      sha256 "a1eef9011a53913622e1126488402a735ff7b3afd69f8204d3e29f2ea14b0548"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.0/heimdallm-cli_0.6.0_darwin_amd64.tar.gz"
      sha256 "4cfe5d6a6aa66c98c838349ff2bed040bb6dff8c9d7beb46370bd8e1c91ae309"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.0/heimdallm-cli_0.6.0_linux_arm64.tar.gz"
      sha256 "8203850bf47613f145d89db6c0dfdf1570243359466f5407af0b52f89ff238d4"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.6.0/heimdallm-cli_0.6.0_linux_amd64.tar.gz"
      sha256 "acb658118455ea3d5cbfd2921a50a3f24b7ca9e0830f7dc4bd1ea9fc9d7ae809"
    end
  end

  def install
    bin.install "heimdallm-cli"
  end

  test do
    system "#{bin}/heimdallm-cli", "--help"
  end
end
