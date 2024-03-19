# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12121 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.212.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.1/speakeasy_darwin_arm64.zip"
      sha256 "3a29bc6cd60cbda6975db6baf823ee68c48595bf3066cb98a4ae436a1b1bb318"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.1/speakeasy_darwin_amd64.zip"
      sha256 "bc174125bd2cbd1758ec325be2e491815fdb39525894b74716a643092ecef1fb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.1/speakeasy_linux_arm64.zip"
      sha256 "00c31a492ca46c5cdfecbf971a3bda65ccada48d5eac524db5003dfad2021c0b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.1/speakeasy_linux_amd64.zip"
      sha256 "5b3f6bfc06c67070ded3c82cfa6d12fef1478dbe1b898cba715cc6095b317325"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
