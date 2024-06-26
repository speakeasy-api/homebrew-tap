# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12860 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.286.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.0/speakeasy_darwin_amd64.zip"
      sha256 "6e440d51c059bd7b9bc2820411a8eb4552eb7c2c4eea1487da18dde94796a7c5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.0/speakeasy_darwin_arm64.zip"
      sha256 "a66c36cc3d37b57f76dda17805d826cd0f15a952ec9632e5df84584b28f2d246"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.0/speakeasy_linux_amd64.zip"
      sha256 "3cf0ac6a5ef4e609f9ae17db17005d69fe286ec531fcba452d30f7d4cd99a16b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.0/speakeasy_linux_arm64.zip"
      sha256 "bc04dfb6e8bca0570ef21cb2f25ee5d41c6750cf2b4d729fdbff1fad6a225e9c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
