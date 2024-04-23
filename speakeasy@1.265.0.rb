# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12650 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.265.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.265.0/speakeasy_darwin_amd64.zip"
      sha256 "02c43d6900b30089d1b2d81bd63a9c443277bf21db49a46447c5d1e6783706fb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.265.0/speakeasy_darwin_arm64.zip"
      sha256 "6f2d4eda0d6ce87ba7e91ae9e4b191e6c5defcfb206928d1f6a1c87896c14ed9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.265.0/speakeasy_linux_amd64.zip"
      sha256 "43d472a725497de638e0b4a96e11e73c58d3a68049b7ee40990e5c3fa8b8974d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.265.0/speakeasy_linux_arm64.zip"
      sha256 "f21120471787133dd697b542e0ba939c458e597fde33a9c7eb5fa6bf1827f260"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end