# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12430 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.243.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.243.0/speakeasy_darwin_amd64.zip"
      sha256 "95829e389c9fc5f82d994bc6b220be0716ea2a521b4a89bb1f2453feeeda8b50"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.243.0/speakeasy_darwin_arm64.zip"
      sha256 "6b454e765aa331119e01b8f59aaf7ffd8078c658e36f0a5bf628a8f19e007c5a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.243.0/speakeasy_linux_amd64.zip"
      sha256 "eef473fa42e0ed3733b127375040cad2f1ad03d0b8f881fbedafb41cc23544b8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.243.0/speakeasy_linux_arm64.zip"
      sha256 "b9248ceee5313e3efc34c70805fb92939365208a16a993e95b520932058c5f28"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
