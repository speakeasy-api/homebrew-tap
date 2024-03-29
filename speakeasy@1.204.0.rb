# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12040 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.204.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.0/speakeasy_darwin_arm64.zip"
      sha256 "1be5108d15d3b9d6444594335ab5e8264475dba7901c9a4ac4a4ac9b20cd56b3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.0/speakeasy_darwin_amd64.zip"
      sha256 "aa17fe25c4489152660ef0cf04fb01983c7e1e8b4203d63e6c95ecb88fbad56b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.0/speakeasy_linux_arm64.zip"
      sha256 "59e341892ba57afdcc404c28309850d11b65ee1b1be0ae1435093b6381c623d4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.0/speakeasy_linux_amd64.zip"
      sha256 "514999e4823bc1bad4a8b2bd500c6d8ffd8c251dbd06ec2ef3cd53e0bf961b63"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
