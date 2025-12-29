# typed: false
# frozen_string_literal: true

class GoSecret < Formula
  desc "A beautiful terminal UI for managing GCP Secret Manager secrets"
  homepage "https://github.com/theburrowhub/go-secret"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_arm64.tar.gz"
      sha256 "d653dae0d1021652145f705de7958bbe25670b194a4579574f4f83edc743423a"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_amd64.tar.gz"
      sha256 "5c1415b3fc27365fbf02297d7a571bac5ea784b87a7574b35993271e633a281a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_arm64.tar.gz"
      sha256 "4b1ac43eb7ff0dfd734b15d9d03b3662fda726fddeb5a56cb24defdc7f888fa4"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_amd64.tar.gz"
      sha256 "90925cc34044e984c4a3790d07aa00952f4f50f22080d57457d706c67c47e6c9"
    end
  end

  def install
    bin.install "go-secrets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/go-secrets --version")
  end
end

