# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12780 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.278.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.278.0/speakeasy_darwin_amd64.zip"
      sha256 "fcb8cd66e63310cfcc6ac9c07d15ce8e06bfb83fa94a887cca910a8abaa762b8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.278.0/speakeasy_darwin_arm64.zip"
      sha256 "4fdb612d240fe147b6743e75b6baddcb1b1eadff456d8aa15e2d37c2ab5fb8d1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.278.0/speakeasy_linux_amd64.zip"
      sha256 "5927637cd1195c991fdd8fc6cf68aff78a803249dfb76a5aceba543d3d5e6b46"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.278.0/speakeasy_linux_arm64.zip"
      sha256 "a69b5103b1648b4b4a759ab9a8a4303e399bc9d08442c12540a8f0bbbde69884"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
