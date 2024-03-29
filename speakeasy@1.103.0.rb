# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11030 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.103.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.103.0/speakeasy_darwin_amd64.zip"
      sha256 "74c4fa5594b7ac9d91069e4a70dca37d35c24917ace81a0258a0db925fab2980"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.103.0/speakeasy_darwin_arm64.zip"
      sha256 "06e5c64cca5afa2a320a5e22b03902a591996e57c3ee7a26ee5254ecde370074"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.103.0/speakeasy_linux_arm64.zip"
      sha256 "9ea82d6f2018f3fa11b55fe4cefa2001d538ecae4f25d7544a8bbbe6afa2e8a1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.103.0/speakeasy_linux_amd64.zip"
      sha256 "d201e19e67b002f9dfaa198333e9998f2a755a691d27a831996891f77e6989fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
