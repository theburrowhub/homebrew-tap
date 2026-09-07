# typed: false
# frozen_string_literal: true

class Ghss < Formula
  desc "Audit and sync GitHub repository settings across repos"
  homepage "https://theburrowhub.github.io/ghss"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.4.0/ghss_0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "b9baa26e654af9206e5bb3afc0201cbd26ba4d40567f4ec9a62fbad293bc1c78"
    end
    on_intel do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.4.0/ghss_0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "8bd4c22d3bb4e20e879ba4a887c8e8e045e1e0b24cc4476202a79e3b44f423a5"
    end
  end

  def install
    bin.install "ghss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghss --version")
  end
end
