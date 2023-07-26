# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1651 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.65.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.65.1/speakeasy_darwin_arm64.zip"
      sha256 "be8651bafff4b300faa2230fb7ddc7685fd02356c964f1a0671940d033a6735f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.65.1/speakeasy_darwin_amd64.zip"
      sha256 "888219ba41994e956beb3dcf601c8be9874bd9bbe452829382e3ca2bf8f32b9d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.65.1/speakeasy_linux_arm64.zip"
      sha256 "e07e94cbc2d03e5b2b0bbda9d7b0fa3905804d8e79d0a6abea1b180ee24297cd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.65.1/speakeasy_linux_amd64.zip"
      sha256 "c52874f33334afdd1909f7f19d185b4592fc8173850d15e045329b7e7fced2fb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
