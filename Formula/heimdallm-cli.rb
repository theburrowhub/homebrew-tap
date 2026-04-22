class HeimdallmCli < Formula
  desc "CLI client for Heimdallm — monitor PRs, issues, and activity from the terminal"
  homepage "https://github.com/theburrowhub/heimdallm"
  version "0.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.12/heimdallm-cli_0.4.12_darwin_arm64.tar.gz"
      sha256 "abba8e05c3310925dda4f09d0deb5110e434a5a3f979fde0ec03413575c811fe"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.12/heimdallm-cli_0.4.12_darwin_amd64.tar.gz"
      sha256 "0653df5ea456a81db2f0083c9dd7789a6e141af95fbff941c020fa441593cfb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.12/heimdallm-cli_0.4.12_linux_arm64.tar.gz"
      sha256 "c8df4d2238812bd6bde6f498bf8d64acc7eba0c0fb6936585083b061c8d33b6f"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.12/heimdallm-cli_0.4.12_linux_amd64.tar.gz"
      sha256 "3c2a2dd0375a76580814ee474a1e7f15fb335807eccfa04a23f9d652adeff88a"
    end
  end

  def install
    bin.install "heimdallm-cli"
  end

  test do
    system "#{bin}/heimdallm-cli", "--help"
  end
end
