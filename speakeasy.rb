# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.114.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.114.0/speakeasy_darwin_amd64.zip"
      sha256 "4849f54f94851ec897d7964a3c797172eb062938067840bbc34b9fb28275b3b4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.114.0/speakeasy_darwin_arm64.zip"
      sha256 "7cdb54c312adaa0926e131c8db33096005be7b51a57653f34c18755e15c15dbf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.114.0/speakeasy_linux_arm64.zip"
      sha256 "a6082408a390572505b451852782d66d2594417292f9b9f5fda32b2bcb044bcc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.114.0/speakeasy_linux_amd64.zip"
      sha256 "166613be19bd412952ac4024918b8af692f2e7c254bbe1022a1667faf06f9bfb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
