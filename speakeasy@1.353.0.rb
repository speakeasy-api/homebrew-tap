# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13530 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.353.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.353.0/speakeasy_darwin_amd64.zip"
      sha256 "67939fec44951f9dadc66ff93fb2c08e3989f5f87c64f2ce7d9aed5a8257406c"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.353.0/speakeasy_darwin_arm64.zip"
      sha256 "844b4628fea51162874b37e364ba96ba295ac589e4d35cefbbbd21fa47c13ca0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.353.0/speakeasy_linux_amd64.zip"
        sha256 "8b125fa9b53c0bfd9dd05476536dca7081dbbe50e09b5fa246b4175f0c03e318"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.353.0/speakeasy_linux_arm64.zip"
        sha256 "f864db632e8287aa8e2e307a97c31f0ac04654d733cb67971ec09773a22e455c"

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
