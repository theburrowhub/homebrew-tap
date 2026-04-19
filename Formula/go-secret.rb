# typed: false
# frozen_string_literal: true

class GoSecret < Formula
  desc "A beautiful terminal UI for managing GCP Secret Manager secrets"
  homepage "https://github.com/theburrowhub/go-secret"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_arm64.tar.gz"
      sha256 "8beefb6dd41cb87dc2626de5b274a192b05c5610d9981475cb703823ca747c90"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_amd64.tar.gz"
      sha256 "34e0dbc285bfd494a420ff6cc06e3f50654f3ce16c55b78fc9f351c471a15e59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_arm64.tar.gz"
      sha256 "5f03e20e7bf115eae9c0ff29493cd9bc124cd70938ec1b1f171e78859fe8419b"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_amd64.tar.gz"
      sha256 "14631904e96f105b90a8e81eb9093545acdab2a797b53b567a36c7c83de91ea0"
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
