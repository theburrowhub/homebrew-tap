# typed: false
# frozen_string_literal: true

class GoSecret < Formula
  desc "A beautiful terminal UI for managing GCP Secret Manager secrets"
  homepage "https://github.com/theburrowhub/go-secret"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_arm64.tar.gz"
      sha256 "d923b088ecba1b5faeff8ebf2c35456108e61ad355325021b819d8d81a32adb9"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_darwin_amd64.tar.gz"
      sha256 "4653090344cece13a6bc769970925f7cc878ee578d2ee4241dcad301334f7278"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_arm64.tar.gz"
      sha256 "a7aa4cbfb4ee98d85b7695c91e219e2312eaafb6b846b5aa7dfca44bd917c790"
    end

    on_intel do
      url "https://github.com/theburrowhub/go-secret/releases/download/v#{version}/go-secrets_#{version}_linux_amd64.tar.gz"
      sha256 "007e9daa2b768ee983f4b085a23e4fc041eaaca40f636a39c51b296a86c4a9cd"
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
