# typed: false
# frozen_string_literal: true

class GitGone < Formula
  desc "A simple tool to clean up Git branches"
  homepage "https://github.com/theburrowhub/git-gone"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_arm64.tar.gz"
      sha256 "cef6fc9a02a4621631a0f796678149b014457ead362ff8279cc8118a5cd7fd1b"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_darwin_amd64.tar.gz"
      sha256 "2a7609fd3d258fc6f34c93f3344d8db53b44dea9ee8963f54b2d5612339007fa"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_arm64.tar.gz"
      sha256 "59714cbdb7d670514d543a91cf7b8edc5954738b23a7d4947beb055596f107bb"

      def install
        bin.install "git-gone"
        generate_completions_from_executable(bin/"git-gone", "completion")
      end
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone_#{version}_linux_amd64.tar.gz"
      sha256 "140bb67b84c9e06fa6eb0e15557b91f5c491c8cbf56705ae0324f1a460c56302"

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
