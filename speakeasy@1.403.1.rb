# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14031 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.403.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.1/speakeasy_darwin_amd64.zip"
      sha256 "a91172717053e7ebe047472c2d28b6f253ac3f6570db7864f6b721853261421e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.1/speakeasy_darwin_arm64.zip"
      sha256 "428652f6cf5bf83a86a5f4d339611a09d884385116ae04632f0fc81361b5f955"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.1/speakeasy_linux_amd64.zip"
        sha256 "195030e8c899d4f7ec0c0b07ce16a37e6ea07566990404150b0b1d5318a5a482"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.403.1/speakeasy_linux_arm64.zip"
        sha256 "107adf575a623f7451a77adb16422bc82a3a7f699ca77b456f17fe7d8f7a474e"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
