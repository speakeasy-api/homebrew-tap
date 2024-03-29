# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11760 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.176.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.176.0/speakeasy_darwin_amd64.zip"
      sha256 "57559b040f1ca22c8a52e26eee2c9939af74c115d7a4136e80fdbe642be73638"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.176.0/speakeasy_darwin_arm64.zip"
      sha256 "1b79c2cb7384ff04fab3c46c31cb6d79ad7e485b872fa132339b0546e6da632f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.176.0/speakeasy_linux_arm64.zip"
      sha256 "d08a68786e1e8c93f5a649d456924eaf52e2b90c3e5780d6f4f992223a071737"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.176.0/speakeasy_linux_amd64.zip"
      sha256 "58cb089e2a7ce06b1e046b673bf61bfba5f2a54bf93fb2b18e69e1dadb90a719"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
