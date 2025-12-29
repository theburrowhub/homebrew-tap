# typed: false
# frozen_string_literal: true

class GitGone < Formula
  desc "A simple tool to clean up Git branches"
  homepage "https://github.com/theburrowhub/git-gone"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone-macos-arm64.tar.gz"
      sha256 "817fd37088108f9cb0a0351ca0195f3330ec1623bf2d1137ec7be48816d9881e"
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone-macos-amd64.tar.gz"
      sha256 "cff4d90f2d71d2113ea946a723468a8e024d3a6ce3520492d3da892c4ac3098c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone-linux-arm64.tar.gz"
      sha256 "cfedcb066ed1c7f554b42073cf4ba25802318aa39c1f0d17bb235836f9e16b6a"
    end

    on_intel do
      url "https://github.com/theburrowhub/git-gone/releases/download/v#{version}/git-gone-linux-amd64.tar.gz"
      sha256 "f3daedeb888870982ac8e7f73288e16980179d5b4f4d76bc00e48152ea735889"
    end
  end

  def install
    bin.install "git-gone"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-gone --version")
  end
end

