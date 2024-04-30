# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.277.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.3/speakeasy_darwin_amd64.zip"
      sha256 "1189f000318588f33e45019fd2c844aa8198c934f1f7a4b92adc78d99cbc14de"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.3/speakeasy_darwin_arm64.zip"
      sha256 "d85f9b988d5eb093cbc279615177e93aab552b76de12b2a1d0a92c4b735abc42"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.3/speakeasy_linux_amd64.zip"
      sha256 "23911f0b5e8f813959bd6aa3ddec0890f2d16cdc50774f31044c9d5513e68709"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.3/speakeasy_linux_arm64.zip"
      sha256 "c6e15beaed4d31ea430e8dc6b7d45d150948b0cb5be71ae1c098fa05531f030a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
