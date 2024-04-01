# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12210 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.221.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.221.0/speakeasy_darwin_arm64.zip"
      sha256 "32c9a6c2d6546f8a62874ce88286e8d1fe324c37d948fb701e43db8d48bc17b4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.221.0/speakeasy_darwin_amd64.zip"
      sha256 "e7c442c6398f84f07fe4657b97cc106ad46083f02d9bee999253b9f2bff626d5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.221.0/speakeasy_linux_arm64.zip"
      sha256 "b59a43f1a6229f24cd29ace304d786693ea414c7a440aa1006f95dc3a95cfb83"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.221.0/speakeasy_linux_amd64.zip"
      sha256 "57ff5207c697699b2b86fdba547ac22ecb248e65bd1e679b9ab98400c447330d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end