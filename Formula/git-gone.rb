# typed: false
# frozen_string_literal: true

class GitGone < Formula
  desc "A simple tool to clean up Git branches"
  homepage "https://github.com/theburrowhub/git-gone"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_arm64.tar.gz"
      sha256 "c64adb0ae6a569428d8c1cc67b96922a5c58894c5117b6f24e2822eaa3917bf4"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_amd64.tar.gz"
      sha256 "4b81821ea8ee31dbcca0b8c51b570bcc1507217251e2c4b1952795e15ab0b4e4"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_arm64.tar.gz"
      sha256 "97b89f639198d1d6ccc6ba2a75037ab6c465b8b50357ed6b4950b80978574e1c"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_amd64.tar.gz"
      sha256 "c68ea2040aae02982e46380828b00abe84f1d350550db30749a2d199a7762b3f"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-gone --version")
  end
end
