# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12855 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.285.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.5/speakeasy_darwin_amd64.zip"
      sha256 "9b87f4d4603d36dc9aee35b2c0ed3386c0d6f7a686fe9a2a8b15c2a94f36f75a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.5/speakeasy_darwin_arm64.zip"
      sha256 "99bc30084abd3cd5606d7a6acdc651a1acc6dd8b63d345c0845699b842d43eb7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.5/speakeasy_linux_amd64.zip"
      sha256 "c27d9355ad3742311122846a8fcae99d0a891d225a80d74cc60a4031d32bd029"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.5/speakeasy_linux_arm64.zip"
      sha256 "7fe3ebfd642e031851d1cab6d8e23ed4748d5f493dfc1bf477fe692413cb5e01"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end