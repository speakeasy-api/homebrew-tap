# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12231 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.223.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.223.1/speakeasy_darwin_arm64.zip"
      sha256 "2c432c1713a5a42a02762710420d04aba5ac687fd329247d41f636c5d8710c6b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.223.1/speakeasy_darwin_amd64.zip"
      sha256 "dad24bdb4b8af091ea485aabdafd9e3724a7b9e3e3e07ea46a56ccd1442679f3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.223.1/speakeasy_linux_arm64.zip"
      sha256 "840733981e5f2a86a6f1684217ff20927acb14bf3df601cbae6fef73e7b95b54"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.223.1/speakeasy_linux_amd64.zip"
      sha256 "4b4b16d948db5b7f3b96aa7d790042926454b5c5c19f9ce847293362f07f7895"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
