# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.504.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.2/speakeasy_darwin_amd64.zip"
      sha256 "8974fa69f87fa912807336e37174b30b2903361f2b3e75b10ce04b822742d877"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.2/speakeasy_darwin_arm64.zip"
      sha256 "1c0dfe3fec5b0e248863af96ec38004457013b5cdf275ce4d4706615a1e1f386"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.2/speakeasy_linux_amd64.zip"
        sha256 "d6000fee3a9f82abc28f28cd9efa8f0dfe3b7a7cdb8e499502b2ea08e98477b5"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.504.2/speakeasy_linux_arm64.zip"
        sha256 "bd79398f14dd8a43c2b118b96498ec1bf4e08b005772fe9f57ab2e5ef4899331"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
