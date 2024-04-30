# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12721 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.272.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.1/speakeasy_darwin_amd64.zip"
      sha256 "3221ba354c69df63ca3e6662c53aea2ac59bc378ad1191fad37150edb9750428"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.1/speakeasy_darwin_arm64.zip"
      sha256 "01ed0230a8201a1fdfaaddc76180e68b67c2764130536e115d21b7c9eeb61388"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.1/speakeasy_linux_amd64.zip"
      sha256 "666b593e30456ce05542d3df6f936273f390b273df4bab179c16f5ba9739a40b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.272.1/speakeasy_linux_arm64.zip"
      sha256 "5b98c26d558c36898cea030c9eab4d5aad6276a94dd7ec82d12fb3d58a7865c2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end