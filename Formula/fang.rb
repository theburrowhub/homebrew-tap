# typed: false
# frozen_string_literal: true

class Fang < Formula
  desc "A modern, fast terminal file explorer"
  homepage "https://theburrowhub.github.io/fang"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "69c662c41210024ee117af0d3574920a43904dd5b08e9137814b2c0d1434010a"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "0d83dc1136249265df8aee18d2ac552d7b31af31bf528e4da0cd4d3d1d62bf45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-unknown-linux-musl.tar.gz"
      sha256 "a052f7841294ac9a0005ad92ced583dce1bc0576ab65579b8c527f5bc129ede1"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-unknown-linux-musl.tar.gz"
      sha256 "b956eca6babfb1c37fc1f6507f7a5fb4b33189630ebe25ec4548aa2a6b279abe"
    end
  end

  def install
    bin.install "fang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fang --version")
  end
end
