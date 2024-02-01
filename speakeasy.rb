# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.163.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.163.0/speakeasy_darwin_arm64.zip"
      sha256 "7e406a5dca25bc9a77fc4bd147ddc777d6106540f078d731845d8bd106eff6fc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.163.0/speakeasy_darwin_amd64.zip"
      sha256 "4f5f8e27872e2ea67fa9157d3eaf6b4a5543fefa88ff840f1349920ca4c1b48f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.163.0/speakeasy_linux_amd64.zip"
      sha256 "09b8211fcbcf90b08b0f01a98933d10db34f35fa920ff644aebae8cf127f3077"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.163.0/speakeasy_linux_arm64.zip"
      sha256 "f2b0d79ff44cea3f9c79cf3d0d9b37688462af95a628171c26669b378cdaf154"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
