# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1363 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.36.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.3/speakeasy_darwin_amd64.tar.gz"
      sha256 "1891d350c5895b6d9cfceef65f79522d1ccef2adea1b50465908e26bc08cdac7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.3/speakeasy_darwin_arm64.tar.gz"
      sha256 "26703dc17a2fe6807ff90431a370790933b407c3ab101ae838df9480e574b3d9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.3/speakeasy_linux_arm64.tar.gz"
      sha256 "7c06803637733b349dc958295194086d060431c66d74c5bbf3cbf1158a053dec"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.3/speakeasy_linux_amd64.tar.gz"
      sha256 "d2e722290c555eb33dbbdd3f72f29cae7cca7d841c509b23ec9c4ca6e30aaeb7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
