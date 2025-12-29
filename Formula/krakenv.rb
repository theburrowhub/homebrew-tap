# typed: false
# frozen_string_literal: true

class Krakenv < Formula
  desc "Environment variable management with annotation-based wizards"
  homepage "https://github.com/theburrowhub/krakenv"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/theburrowhub/krakenv/releases/download/v#{version}/krakenv_#{version}_darwin_arm64.tar.gz"
      sha256 "45ef0b86fb33e192aba9e71c6b8f23fbe17e8ec04533f29ede143a6b6368b8cc"
    end

    on_intel do
      url "https://github.com/theburrowhub/krakenv/releases/download/v#{version}/krakenv_#{version}_darwin_amd64.tar.gz"
      sha256 "13c4674f98a4a230812f5c2a3c8ceace4d1c26274648a6ed608f4d72bab8ff73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/theburrowhub/krakenv/releases/download/v#{version}/krakenv_#{version}_linux_arm64.tar.gz"
      sha256 "be42ceb40a5c8b4e216f789b026cdaffc89fbb94ce65dac0312b86e8d0d8b975"
    end

    on_intel do
      url "https://github.com/theburrowhub/krakenv/releases/download/v#{version}/krakenv_#{version}_linux_amd64.tar.gz"
      sha256 "eac855eccf8cbd1d95210c05a47858ee7e8ec97788712b27e056b18bb96c736c"
    end
  end

  def install
    bin.install "krakenv"
  end

  test do
    assert_match "krakenv version", shell_output("#{bin}/krakenv version")
  end
end
