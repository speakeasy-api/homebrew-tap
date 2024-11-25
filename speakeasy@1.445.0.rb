# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14450 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.445.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.0/speakeasy_darwin_amd64.zip"
      sha256 "e4ef81e8bff250ed33a2136448247f59d8f04d8908c3d3166b1551e69dbd2d38"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.0/speakeasy_darwin_arm64.zip"
      sha256 "d2ab74d08d02c73f9463b51427a120ed3b25e90568939016a9e5cd795ce8b3cd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.0/speakeasy_linux_amd64.zip"
        sha256 "89a5bafe9a19ff47d8e418e32f6def67ed52c79a96e4e5c82c8c9ffce36b1a3b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.0/speakeasy_linux_arm64.zip"
        sha256 "eb26e4d3c5b2829b722ac00cc9bca0db6b00f5eed325f9453da119b8cd9ce0bd"

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
