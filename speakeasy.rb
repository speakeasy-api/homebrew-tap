# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.136.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.136.3/speakeasy_darwin_arm64.zip"
      sha256 "2bba1cce9ee15628070f318b801e989574ccc1d3361bd1cc5c2511d6cd64662b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.136.3/speakeasy_darwin_amd64.zip"
      sha256 "3ff2c9eb2e7abd9399bbc981e023501f1f959306ab38c52fe9bc3324cb700d02"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.136.3/speakeasy_linux_arm64.zip"
      sha256 "e6b3bed0f905bdd5f42f9effca3d907dfedd58a11eb1c716ce10ef1ae974ca25"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.136.3/speakeasy_linux_amd64.zip"
      sha256 "1800e1c1e1836f3c4c62f2af0a1f40ccd74ac54ca8fdc3a0071fe60d05a5a34f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
