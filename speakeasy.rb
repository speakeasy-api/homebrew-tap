# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.66.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.2/speakeasy_darwin_amd64.zip"
      sha256 "728c09162d17945d21512d600a01636017ae5b837f1dc43769947beb2d306ee1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.2/speakeasy_darwin_arm64.zip"
      sha256 "4113cbcaa91ad582ef35dec7df98aa580cdb638a0156fa94fc8d5c811768a7f4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.2/speakeasy_linux_amd64.zip"
      sha256 "a259a4dc460408bf1b5aed5197ab8d04d7db4b8bdb8a442d2c31c555b3c2ea66"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.2/speakeasy_linux_arm64.zip"
      sha256 "75aeb41cb8336ea06692f8a0b4ee991da872a9b84fa24f0f03b261cce6492e44"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
