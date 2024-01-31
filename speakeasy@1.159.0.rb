# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11590 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.159.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.159.0/speakeasy_darwin_arm64.zip"
      sha256 "1bccbec14e20aaa1b1ea53a939ecb622992b0bfa8810ef734c964a1d35aa9472"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.159.0/speakeasy_darwin_amd64.zip"
      sha256 "dc9b4feaa48d647faec30c19139a01400c5017ec285d5dc52da7da07771204c6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.159.0/speakeasy_linux_arm64.zip"
      sha256 "2b48975106ba1f450c571c1d6006fc1176587b613a0899e31f535fad401541a7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.159.0/speakeasy_linux_amd64.zip"
      sha256 "d19c18c04b8cf3e98df19d19a3d0000f2b540d64af45e29840f19cb84bcb306e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end