# typed: false
# frozen_string_literal: true

class GitGone < Formula
  desc "A simple tool to clean up Git branches"
  homepage "https://github.com/theburrowhub/git-gone"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_arm64.tar.gz"
      sha256 "6e7c9d278f68e6c2a604f22eeedb7e9d99647ddc492fafe2c88571283c482851"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_amd64.tar.gz"
      sha256 "8e8052a0c2d1b3568998cc84bea4b37c23a7db71d547cf8f34b6b109f2f55a30"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_arm64.tar.gz"
      sha256 "896e45dc1c748c4487e2e87849b2c4fe7eb31c59bfede8323f47f28fca5d2344"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_amd64.tar.gz"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"

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
