# typed: false
# frozen_string_literal: true

class Ghss < Formula
  desc "Audit and sync GitHub repository settings across repos"
  homepage "https://theburrowhub.github.io/ghss"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.2.0/ghss_0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "e6c92daace88dd871f4d726d6f1d682b88d1823396824d05f6c735411bd3bfd7"
    end
    on_intel do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.2.0/ghss_0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "82d64550f52c8cd5ab8f4f1f3ef78e9f2c58bd7553a7b604eee91cd5d081b054"
    end
  end

  def install
    bin.install "ghss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghss --version")
  end
end
