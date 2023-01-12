# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT0190 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.19.0/speakeasy_0.19.0_Darwin_x86_64.tar.gz"
      sha256 "aff6210201c789c93017d98187e4593c41bb593f755b15da298cdae304a30489"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.19.0/speakeasy_0.19.0_Darwin_arm64.tar.gz"
      sha256 "a40c8319178214a88c2392da4aedb4ae2148c2656d6114f9589ed0ab70e7ada6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.19.0/speakeasy_0.19.0_Linux_arm64.tar.gz"
      sha256 "db47d502dd85f4fdc9e43caaeea91b550670223d942ffa95ac774f4e7cd4207b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.19.0/speakeasy_0.19.0_Linux_x86_64.tar.gz"
      sha256 "3e63cc46289d1d3dc3d8990234b4684388fcd13d64d892c8638061f0ad9291ab"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
