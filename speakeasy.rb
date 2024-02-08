# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.175.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.2/speakeasy_darwin_arm64.zip"
      sha256 "2c6f74489036f6b119a701a44837eec51c872d591f0c73c79cfbe031a5e4b284"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.2/speakeasy_darwin_amd64.zip"
      sha256 "16905c2a4a34035897aa8ae4d3633e06c5322d97cdffb1513c5e8da8f0329c77"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.2/speakeasy_linux_arm64.zip"
      sha256 "129e17499cb8027b26531b888431a2c2adda66c0efaf614d1582977985e2812a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.2/speakeasy_linux_amd64.zip"
      sha256 "1c90f4929dd5f79cabaa8846d911664b5f5b3b1cae7e0d713005a136ecf0a82c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
