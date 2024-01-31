# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.158.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.158.2/speakeasy_darwin_amd64.zip"
      sha256 "f45a96e2b7e9430b0bf2d166805b211bf0cad9fff2eb73b5ff6a5630179b66b1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.158.2/speakeasy_darwin_arm64.zip"
      sha256 "942da15300968b58353128656326ed010d3db29ad0874019c5b2e22064c10311"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.158.2/speakeasy_linux_arm64.zip"
      sha256 "4f0398e11d126cf8f6c5ef2851a2210cff7c73fe69b31447d0abf1563e98488b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.158.2/speakeasy_linux_amd64.zip"
      sha256 "3dc79ae89e8c87cc4a17ecb1e251aeeaa98f0f9436acc4a0591d439ae0a98d90"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
