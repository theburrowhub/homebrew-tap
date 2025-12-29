# typed: false
# frozen_string_literal: true

class CherryGo < Formula
  desc "A CLI tool for partial file versioning from other Git repositories"
  homepage "https://github.com/theburrowhub/cherry-go"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go-macos-arm64.tar.gz"
      sha256 "3b0b0d9a7dc6ce1c1a09ec4672db49003d5f035cb8e5c2f045d9923be1462587"
    end

    on_intel do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go-macos-amd64.tar.gz"
      sha256 "75a93b7aa22784214a2f9ddae68f26f672a02f4dea8c87e7bea2ffdd614c2d6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go-linux-arm64.tar.gz"
      sha256 "483f0608f5716af2fd4b9d1957b0449fdc1409a8111667b00969ebea4229834a"
    end

    on_intel do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go-linux-amd64.tar.gz"
      sha256 "8dff526606563ea38c86d645939bf21c560c06804e8b954d7d5146b665ad7023"
    end
  end

  def install
    bin.install "cherry-go"

    generate_completions_from_executable(bin/"cherry-go", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cherry-go --version")
  end
end
