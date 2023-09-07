# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.80.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.80.0/speakeasy_darwin_arm64.zip"
      sha256 "1247f0ad503cf364fc81e7c22a25dac1ecab8ac80363bfde3144125246bf759b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.80.0/speakeasy_darwin_amd64.zip"
      sha256 "c8eeb9b7665bce1926cde027aaa0bc9fe6ee11858f8df7731048642e832c93d4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.80.0/speakeasy_linux_arm64.zip"
      sha256 "bea7c6f6475f2706ae65509525023a2e66e92b753a1675d612aa25d8de71dd22"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.80.0/speakeasy_linux_amd64.zip"
      sha256 "deee2d9f26acb1c12a1bdba35926b8bbd27e5e46cda2bd9044318f39d72c34d2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
