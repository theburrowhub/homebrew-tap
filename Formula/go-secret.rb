# typed: false
# frozen_string_literal: true

class GoSecret < Formula
  desc "A beautiful terminal UI for managing GCP Secret Manager secrets"
  homepage "https://github.com/theburrowhub/go-secret"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_arm64.tar.gz"
      sha256 "5711dffe7e8d7db5857eb1d7b80932db55cfbd24add0edaa6e7cfc870bb69592"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_amd64.tar.gz"
      sha256 "eea9a559128a1d7763cdee3abca80f8343dc805af561ab80cee5eec13afcd35c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_arm64.tar.gz"
      sha256 "9025cfea8fcacad6b385637df39c258d2ee44e4f6905068e95c9b3b263c274fd"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_amd64.tar.gz"
      sha256 "8979bf52dbbfef385558996e012030e391ec8c141bf50da5f00e6f05307a076a"
    end
  end

  def install
    bin.install "go-secrets"

    #generate_completions_from_executable(bin/"go-secrets", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/go-secrets --version")
  end
end
