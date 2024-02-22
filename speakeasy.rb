# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.192.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.1/speakeasy_darwin_arm64.zip"
      sha256 "8ca77b702fd4ead2f4fe69be282fd27731c8cc8b06638ebbfe96f37ecb962297"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.1/speakeasy_darwin_amd64.zip"
      sha256 "3eaf797be0028346bffc829a788524a2b13c6641de213bbcb8a53b62a0f7c0a8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.1/speakeasy_linux_arm64.zip"
      sha256 "747e5be1a5d9a5769c52fe107871eea763b8bce9810c8e101b390502bd023c40"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.1/speakeasy_linux_amd64.zip"
      sha256 "e3d13fc21eff042fe4d00ebd123c0ba91d18b3e9c86c5f405518e30f7ff39f32"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
