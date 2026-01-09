# typed: false
# frozen_string_literal: true

class GitGone < Formula
  desc "A simple tool to clean up Git branches"
  homepage "https://github.com/theburrowhub/git-gone"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_arm64.tar.gz"
      sha256 "e2534e078f940d66bdfd201f8a627b9a184c22f6e1b728e66db877eb680491ba"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_amd64.tar.gz"
      sha256 "bd9714e4723563abe161b5f5edac14845f8304e1ccf4cc198615da211ce23b1a"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_arm64.tar.gz"
      sha256 "e80d7670141e70b0ffbefe71acf733183395509479511e91a5fb5aeb55608120"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_amd64.tar.gz"
      sha256 "505365357823ef02c639f76358e792141414dd65e288f06e8fac85c7329b8739"

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
