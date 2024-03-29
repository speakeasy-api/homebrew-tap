# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11050 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.105.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.105.0/speakeasy_darwin_amd64.zip"
      sha256 "5c2309e9c2d5c2f12b79081318e9cbbd6075077ed33b7ce1dd31859b942b36a3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.105.0/speakeasy_darwin_arm64.zip"
      sha256 "99d0dc88a45ced03d8d59365d0e62d248cdcdce7de4a0d1e6e44f6eb357341fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.105.0/speakeasy_linux_arm64.zip"
      sha256 "2740387dd0153801d310ddda907e69ef8b556481dd1f8b0c935dde18667fbb3b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.105.0/speakeasy_linux_amd64.zip"
      sha256 "632119f283ad0a0f0b639df759f457acf0ee17a53e6dc75db39e83362776080d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
