# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1824 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.82.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.4/speakeasy_darwin_arm64.zip"
      sha256 "6d36e138fc03b0634ae5749a8135ba3b1bf05ec6c655cae5597050dd60b96b73"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.4/speakeasy_darwin_amd64.zip"
      sha256 "4b71ab1cdd999440d9a397fcf0ab62f093dbb9721af2710d2a028a5c1284dcdb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.4/speakeasy_linux_arm64.zip"
      sha256 "f2bb5652760df791973bf02fe38f3da0d373c3860512a65524590b84e7ea9888"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.82.4/speakeasy_linux_amd64.zip"
      sha256 "ad114ed5ce0d313ad3a2f43c1e6e4c3668c9db06c92e713100fc6e1cea8aa8dd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end