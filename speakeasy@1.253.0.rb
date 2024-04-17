# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12530 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.253.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.0/speakeasy_darwin_amd64.zip"
      sha256 "2ba91616e08d05006b2775f38065846c8788c10d08b765323e003e291e42aa55"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.0/speakeasy_darwin_arm64.zip"
      sha256 "dddec30fd1f35129440118af8bdd4b1592c18d0da8a66c6a5c60b55ebb9f7d54"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.0/speakeasy_linux_amd64.zip"
      sha256 "44089ea490c02fff34ef3546167c7d2609957bba25b409d44d3ebf050dd5cf14"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.0/speakeasy_linux_arm64.zip"
      sha256 "0eabd6cf035e7c113740b9dfdb644ca01bbe602ed656e40d8cb39e07202a9587"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end