# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11931 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.193.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.1/speakeasy_darwin_arm64.zip"
      sha256 "9d5af57d170be5f11025f5ac7280ab5dbc9bcfbb4b74e53d98a57b514e15998f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.1/speakeasy_darwin_amd64.zip"
      sha256 "5e2fdf447e413f66b368bac93cc603ee4591d05ed20593ba0c2c117feb8778b2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.1/speakeasy_linux_arm64.zip"
      sha256 "c5071c75fba802ae33511262fb8df37f8fa661d957f922f6abbca60aa35b1590"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.1/speakeasy_linux_amd64.zip"
      sha256 "c63eb0401d15927117faa2b366ffbbf20e2c95d75bb9fe999f3b3c2397c7e879"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end