# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11331 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.133.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.133.1/speakeasy_darwin_arm64.zip"
      sha256 "bd00405f14aa1c2bb3fc5172e3da379e3b654a888e714659580a17112941f08f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.133.1/speakeasy_darwin_amd64.zip"
      sha256 "088a86adc73514c2602b39492953262fea6fefa64d16cef7a50d812e75fcd36d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.133.1/speakeasy_linux_amd64.zip"
      sha256 "e08a3ed8586839c0c5b342f702a5c2641abc81e57259bca0dd343ef0ea0123ee"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.133.1/speakeasy_linux_arm64.zip"
      sha256 "a3b0f6095316fc434fc6b10a4a81971fa484d3a66986862e8511579e5b0e6f43"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
