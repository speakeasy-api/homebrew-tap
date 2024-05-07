# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.280.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.3/speakeasy_darwin_amd64.zip"
      sha256 "f78f82e9a36d49045fb490ae8c5d0f269f2ff3ad1c6b836eee218de3beb438cb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.3/speakeasy_darwin_arm64.zip"
      sha256 "28a986f5452fd2ab1a7cbd0cebcf751c4ef5196f51085d87d55601ffa406f370"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.3/speakeasy_linux_amd64.zip"
      sha256 "20efbe578e94550d7452b1da5bb60a6042e6099636752e7c085304b9d498e44a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.280.3/speakeasy_linux_arm64.zip"
      sha256 "b90dc7d26e6e26dfe2e33177b4ed260406bfaeb2c5e524a1b6048ced0af3ce36"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
