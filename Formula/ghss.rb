# typed: false
# frozen_string_literal: true

class Ghss < Formula
  desc "Audita y sincroniza la configuracion de repos de GitHub"
  homepage "https://theburrowhub.github.io/ghss"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.1.0/ghss_0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "6982ca5140157b533ddfd626bef750bfbfa505a7ce8d4cdfeb89cb13bed6b156"
    end
    on_intel do
      url "https://github.com/theburrowhub/ghss/releases/download/v0.1.0/ghss_0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "8404f9b08e09c038a7fe5a2659461fa45c3fe7b6abfd658e44c7088296bea120"
    end
  end

  def install
    bin.install "ghss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghss --version")
  end
end
