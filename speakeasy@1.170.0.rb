# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11700 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.170.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.0/speakeasy_darwin_amd64.zip"
      sha256 "f3f176a4e98e85aa8a8d1180babc0454f354c6776907bd1765c8290045b79cc0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.0/speakeasy_darwin_arm64.zip"
      sha256 "d9df102b82ce3cbbab5b09a01e5e51c2f50db7ab3e2e19761aa94c07e50bfc91"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.0/speakeasy_linux_amd64.zip"
      sha256 "eabc4bf459a8f604b3e491a40043871956920418e75249ad32fbc15393d4722f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.170.0/speakeasy_linux_arm64.zip"
      sha256 "0f6d70fbc518faab95d5624a58c9f9df6d52f3651116bb48c676cd9ebeaf7161"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end