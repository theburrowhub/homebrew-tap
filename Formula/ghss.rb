# typed: false
# frozen_string_literal: true

class Ghss < Formula
  desc "Audit and sync GitHub repository settings across repos"
  homepage "https://theburrowhub.github.io/ghss"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.3.0/ghss_0.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "5332c19f455c50beecbf6ea6d079d8d98f773787ac4f732f9a3a7af5c7507009"
    end
    on_intel do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.3.0/ghss_0.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "c109600058fa1caadd97406ba76ae3197332f1ab95aa57b64b1a07f30eddf9ac"
    end
  end

  def install
    bin.install "ghss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghss --version")
  end
end
