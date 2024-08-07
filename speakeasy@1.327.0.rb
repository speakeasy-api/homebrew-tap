# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13270 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.327.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.327.0/speakeasy_darwin_amd64.zip"
      sha256 "29d6ffda0992462386b29fa61ef0b08e143f032689f5fa5bc6f0e133553fe1c0"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.327.0/speakeasy_darwin_arm64.zip"
      sha256 "870d8fa229294d141e55f1f3d21362f8e91ead49d66b6978f55f920e3f30c613"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.327.0/speakeasy_linux_amd64.zip"
        sha256 "be0009d7c2c40952a93fde4b99e948a8d334529686014c45111a1270310f37e4"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.327.0/speakeasy_linux_arm64.zip"
        sha256 "81634a028ba3139e72ad6e25592cf31533085098c2a5c21fba3adf765bb9df36"

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
