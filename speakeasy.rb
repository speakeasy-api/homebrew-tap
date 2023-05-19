# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.35.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.13/speakeasy_1.35.13_Darwin_x86_64.tar.gz"
      sha256 "4c389d5daac4a7466b38157bcb2dde91da37e2ed4a47af11eeca9bedcc4c7fe8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.13/speakeasy_1.35.13_Darwin_arm64.tar.gz"
      sha256 "e684352de7ef557fbdecfd07c6c954121d59d17f28d7b85fd3a8d9a9e08c6aa4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.13/speakeasy_1.35.13_Linux_arm64.tar.gz"
      sha256 "1d10c418e5143a5b50d27e541367831024d06cf9eaa6d422702f8ad0f9d5eeab"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.35.13/speakeasy_1.35.13_Linux_x86_64.tar.gz"
      sha256 "87b92287a3a24611779bcafc06e3515753c7e5202318cd687d0ad1d330910ae2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
