# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12741 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.274.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.274.1/speakeasy_darwin_amd64.zip"
      sha256 "07b6e3d2734c30916f0643a3daeaa2877bb00fbf037f3846f9df687c5db57383"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.274.1/speakeasy_darwin_arm64.zip"
      sha256 "7123ca33f24d077dd5429c8b2753d9a95e49445fe813861e95a18b2914895beb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.274.1/speakeasy_linux_amd64.zip"
      sha256 "96d8d06030b2373071842733c66337012ff0dd8c228e1c6ebd06bb6206057fc5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.274.1/speakeasy_linux_arm64.zip"
      sha256 "5094bcd153547233191a14fe477ecf522b70de835e2f9033be95722b43051e39"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
