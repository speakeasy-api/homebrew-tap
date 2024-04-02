# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.232.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.2/speakeasy_darwin_arm64.zip"
      sha256 "de0c8ee29f2a17cd2f99159fce97245526988be8129e26215568bdd4279de67e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.2/speakeasy_darwin_amd64.zip"
      sha256 "3d32adc367cf39bf4bfcff5321b1250b02c8a1f4bd898a82d574f137bfeceac1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.2/speakeasy_linux_arm64.zip"
      sha256 "568ca8e2f4b338cba5b459cae91d6d7db3381cc6e638d1e49fc85fd99384899c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.2/speakeasy_linux_amd64.zip"
      sha256 "795f3f972e2de144bd6214fcb2a07de60ee8c4f4a6b3bdc7bee89793b4dd348f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
