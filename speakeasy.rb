# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.272.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.2/speakeasy_darwin_amd64.zip"
      sha256 "5ffe4b83db661df373f4f5b552b1f12200e1b9512180f33c557c6ef4db10a732"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.2/speakeasy_darwin_arm64.zip"
      sha256 "20f67ab1717ff813537acfd559d81eb6ba47605f9ffc692d642f3c1b4569ce33"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.2/speakeasy_linux_amd64.zip"
      sha256 "b1d4c684f126140ffcc06cb2d952db37af48499917a1840453e3462636d57a1f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.2/speakeasy_linux_arm64.zip"
      sha256 "8f220d132a7667917bf7c9de5365c606c719d33b3cda13c8e05b10136d097fcf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
