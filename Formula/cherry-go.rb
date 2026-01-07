# typed: false
# frozen_string_literal: true

class CherryGo < Formula
  desc "A CLI tool for partial file versioning from other Git repositories"
  homepage "https://github.com/theburrowhub/cherry-go"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go_#{version}_darwin_arm64.tar.gz"
      sha256 "b44dc7d8f5e8ece5d507ecce82289c32667c92a93bacbf5125efd09b93e09515"
    end

    on_intel do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go_#{version}_darwin_amd64.tar.gz"
      sha256 "04e3e283968f338efc11145887dc6d0d435c83cb345c7cf5444441698ee123ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go_#{version}_linux_arm64.tar.gz"
      sha256 "cbc4a86e0a8b2b37fce1cfb2f0f6062f92016b0b162bf17d67f38c547898b9db"
    end

    on_intel do
      url "https://github.com/theburrowhub/cherry-go/releases/download/v#{version}/cherry-go_#{version}_linux_amd64.tar.gz"
      sha256 "3cf9982cf07eecfac587ef0d41540d9b84964aa37f1b0ef9bab36802b7ad5f38"
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
