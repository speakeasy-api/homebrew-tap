# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1870 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.87.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.87.0/speakeasy_darwin_arm64.zip"
      sha256 "2d68ba3304e434d6a7e455feb8001df8a1ad1d873b662d9fb85ac5e05af33bb3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.87.0/speakeasy_darwin_amd64.zip"
      sha256 "f831a586fbe6d774d1d1a3a62df77ba7cdc968b6ab1a8e220a61d8e53041ab4f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.87.0/speakeasy_linux_arm64.zip"
      sha256 "d163a18d841380de517aa0bbb0747b6f47f8fcaf1917ce16a089b85ba5ba5a78"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.87.0/speakeasy_linux_amd64.zip"
      sha256 "f7c1709a4a1ecc45981cc582e7a3a2b6eb883504a3907edfbe21d3623e76a90a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
