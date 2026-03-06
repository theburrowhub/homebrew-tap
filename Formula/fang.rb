# typed: false
# frozen_string_literal: true

class Fang < Formula
  desc "A modern, fast terminal file explorer"
  homepage "https://theburrowhub.github.io/fang"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-apple-darwin.tar.gz"
      sha256 "64a5535919db47ea7933f208611584023df650cd2486e21ba9fd7450cd185eaa"
    end

    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-apple-darwin.tar.gz"
      sha256 "467b7167cb8e7387168b243030a7d9a2df0f947e50ccf16dd692ffb979101fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_aarch64-unknown-linux-musl.tar.gz"
      sha256 "f461df96c073efc6c26b182e3822f8d9f06af1d47ff7645b0afb0a7d57d5a9e6"
    end

    on_intel do
      url "https://github.com/theburrowhub/fang/releases/download/v#{version}/fang_#{version}_x86_64-unknown-linux-musl.tar.gz"
      sha256 "126f35be675683e7564c76e08504bdae3431a1159f342130cc674b1086c26295"
    end
  end

  def install
    bin.install "fang"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fang --version")
  end
end
