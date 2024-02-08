# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11670 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.167.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.0/speakeasy_darwin_amd64.zip"
      sha256 "9d6ba6f729f3114825dcba7b89bec05b16d55f73341ee1935206674d488e132b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.0/speakeasy_darwin_arm64.zip"
      sha256 "d1bdd1537d71b23a75863f4c0c66bed8315430058e7d34173c4e4aef466b77ec"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.0/speakeasy_linux_arm64.zip"
      sha256 "0346d8f6433cf64d4c6aa974f313e1c6559ed5d6ede2a27f6c322b24a4a46a99"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.0/speakeasy_linux_amd64.zip"
      sha256 "7461daad19bd35754febbdd36844ba6915e522740c33b838c97c1b6980bb29a1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end