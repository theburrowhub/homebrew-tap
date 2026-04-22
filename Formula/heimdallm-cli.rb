class HeimdallmCli < Formula
  desc "CLI client for Heimdallm — monitor PRs, issues, and activity from the terminal"
  homepage "https://github.com/theburrowhub/heimdallm"
  version "0.4.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.19/heimdallm-cli_0.4.19_darwin_arm64.tar.gz"
      sha256 "dbe6186db5f89453d2943b3e495abd8d1deb919a0779a349267be17e736f794e"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.19/heimdallm-cli_0.4.19_darwin_amd64.tar.gz"
      sha256 "46f6ff86813597ecd4fb484b09f7b203059296bc868a463d1788728dd316416a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.19/heimdallm-cli_0.4.19_linux_arm64.tar.gz"
      sha256 "ba0f2d768d776b8d97b96dbe1930a5d6df6273b84f20604c3a05efeb46b6c6e5"
    else
      url "https://github.com/theburrowhub/heimdallm/releases/download/v0.4.19/heimdallm-cli_0.4.19_linux_amd64.tar.gz"
      sha256 "67b58790ba213e044e888582c35ddf1a571938ed77737b09c9058ac8177bee8f"
    end
  end

  def install
    bin.install "heimdallm-cli"
  end

  test do
    system "#{bin}/heimdallm-cli", "--help"
  end
end
