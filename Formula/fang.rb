# typed: false
# frozen_string_literal: true

class Fang < Formula
  desc "A modern, fast terminal file explorer"
  homepage "https://theburrowhub.github.io/fang"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "64043adad46beb817ac93f409967c0d69f5480b8316759089730afbd456564ed"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "f4d1c4524fcc94ae2edbb8a1f8f5083a17c57098313b3bc7e364e1934a52b469"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-unknown-linux-musl.tar.gz"
      sha256 "185daa09356e6b9d602f94b51139f42677309cd2f5ce0254c1421e421c39ef00"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-unknown-linux-musl.tar.gz"
      sha256 "42ca76af01191ccbe81670a1c8d9bd212c17750a41693639509c48918c07b472"
    end
  end

  def install
    bin.install "fang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fang --version")
  end
end
