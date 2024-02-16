# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11832 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.183.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.183.2/speakeasy_darwin_arm64.zip"
      sha256 "c1b132c8b8a92ef49ed83373c37f0e15ca04ddc3cb5439f401746cf8929f84fb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.183.2/speakeasy_darwin_amd64.zip"
      sha256 "8f22f188eee395ce665e872d25d19473b3d797ec7a733da0bfc3d7f8bd6f5115"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.183.2/speakeasy_linux_arm64.zip"
      sha256 "cc81544040987e8ba43381bb9594fd31cb97e03f1e310f7e5f7ce498a112090a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.183.2/speakeasy_linux_amd64.zip"
      sha256 "6cea12bef2b1abf47cf0fe131a64c474a55d20da0a3fe28f3120b09847a4a9d1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
