# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.77.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.0/speakeasy_darwin_amd64.zip"
      sha256 "7e1500167e20889bda7b9c7888a9d59dd50d60a5afa8c93da667a4de02208217"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.0/speakeasy_darwin_arm64.zip"
      sha256 "8c32b91974a3af52c8cc712d9ff3b2dba84a9ef016b111c2920b10b5fb0ed86a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.0/speakeasy_linux_arm64.zip"
      sha256 "2e511e15d20c518d11b9175a7e665ab4c89e4b5041aa71f7f8d4b6ad80ef2dde"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.0/speakeasy_linux_amd64.zip"
      sha256 "aae87673a25d7bbeabf9a592bf01498c76685f8575f1045cf3173fb9acd52e5b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
