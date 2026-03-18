# typed: false
# frozen_string_literal: true

class Fang < Formula
  desc "A modern, fast terminal file explorer"
  homepage "https://theburrowhub.github.io/fang"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "5e8aff88d190f8566d164bfd22d5b1f60f0b3601a182a1610797fc0e2cc03f64"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "d64656c416342adf0a6f9e3af77b0dfec91ff997c9c4e7bfcbb83565b43f6b38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ec52893c60a89e85414f8ea79bc22c2a0c30040926911418b10e8a5f30d3b41"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c8ad71ff4cf954e4c580e724efb81c4156ff6ccca2268bf1dfa62edff227168"
    end
  end

  def install
    bin.install "fang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fang --version")
  end
end
