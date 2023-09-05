# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.78.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.5/speakeasy_darwin_amd64.zip"
      sha256 "93e4ffd0d65624524174ebbc96fdedf8150861dfe53d25e5469fac43550e82b2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.5/speakeasy_darwin_arm64.zip"
      sha256 "c89a16fd09ec5e3e9f200b9d9dc624912a97f8825272c017e6630b8e7d79a3d1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.5/speakeasy_linux_amd64.zip"
      sha256 "e640f54be5f3dbb6cce5d6748b89070c2237018e446de0d36ac8696f759666f9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.5/speakeasy_linux_arm64.zip"
      sha256 "bd4ea2ef66ed041b6a987f030f20bb6c90549be78991e5f9ec9a4e28bd3a023f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
