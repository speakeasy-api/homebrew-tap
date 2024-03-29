# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11121 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.112.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.112.1/speakeasy_darwin_amd64.zip"
      sha256 "4be372e2744e41a05bac0f0ed57d83af345653f20ec739e14756bc69d9f82460"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.112.1/speakeasy_darwin_arm64.zip"
      sha256 "649beb0f413052c47034fe2b0d3d5183206605a99aac82b333aca1795df35c7e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.112.1/speakeasy_linux_arm64.zip"
      sha256 "e57797943971d68b6fc4065d141e9ccf21c9713b01da7ff0623909202cf52565"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.112.1/speakeasy_linux_amd64.zip"
      sha256 "b01c317045fd10aadc271408a1a527cf73b6b88e4a69fddbbdbe414b1c17f24f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
