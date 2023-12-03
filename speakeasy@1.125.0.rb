# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11250 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.125.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.125.0/speakeasy_darwin_amd64.zip"
      sha256 "c9ef701f60f9181f4f536596347d18366687defcd49f727994d602cb1099d783"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.125.0/speakeasy_darwin_arm64.zip"
      sha256 "88fa55bde5e558a6017de434a91bd629cc70ccbab120567a416b35b4ff7b8875"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.125.0/speakeasy_linux_arm64.zip"
      sha256 "ee532a5c95305ece50f2887f8d80d1a7185f298e4e3498267c758c4343fa0eb3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.125.0/speakeasy_linux_amd64.zip"
      sha256 "bd8eb7b871e97abbd87a6008bb7c3413d29c20f350e0c2b74b6917465d485f04"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
