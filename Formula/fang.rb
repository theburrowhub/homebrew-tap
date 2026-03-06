# typed: false
# frozen_string_literal: true

class Fang < Formula
  desc "A modern, fast terminal file explorer"
  homepage "https://theburrowhub.github.io/fang"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "033cfc118bc9da36954f2224cb0ea30bbaecefa218893e059cc70cb892185b2e"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "bf4ad3be5921f8de3b5f8988d84e7596c252baf7748fcd9e22b08cda9a824e2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-unknown-linux-musl.tar.gz"
      sha256 "ade17a2c0bfd6dbb97745838b16206d97c61dedf5ad046cc089a5523be7c11f5"
    end
    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-unknown-linux-musl.tar.gz"
      sha256 "d20817c77d9c8070c48913a7a072df7ae67b5c7f6fb7d68fc194c48cdde38968"
    end
  end

  def install
    bin.install "fang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fang --version")
  end
end
