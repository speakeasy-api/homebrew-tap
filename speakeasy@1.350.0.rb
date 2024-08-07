# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13500 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.350.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.350.0/speakeasy_darwin_amd64.zip"
      sha256 "0a0b45f08a409f663478b8044b5b75df33380119fc40be58e64af1da86fe43bd"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.350.0/speakeasy_darwin_arm64.zip"
      sha256 "556fbe445a31b7895f38a94c5dee654a1ad83ed2906e2e51fe251bf859be72e2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.350.0/speakeasy_linux_amd64.zip"
        sha256 "187f6e9268e2e340bbc7e11a2778230eca1995aeae0c7148039c1d62868760cb"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.350.0/speakeasy_linux_arm64.zip"
        sha256 "dca2f96ef955f39ce20f735ad3e64e44e758d43e2eb6d8420a4f152195e14293"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
