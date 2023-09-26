# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1783 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.78.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.3/speakeasy_darwin_arm64.zip"
      sha256 "f2f8e0110794244d05c01abe444c4da5d623b0b1ea9b115576922fc0eb05bc82"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.3/speakeasy_darwin_amd64.zip"
      sha256 "c5676f87d1c849c88aadb07d4a9bc46b9909e2d0bcf75060a23e68e3fb0a320d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.3/speakeasy_linux_arm64.zip"
      sha256 "862c4904ba41fcd9c4a11cfe44ca70dad1ab55f5ccf13d91e57a4db12f6364bd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.3/speakeasy_linux_amd64.zip"
      sha256 "7740e1b306db9460d6a3d0e8c33505c11f437af88ca57c052290cf89ea13b1e3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end