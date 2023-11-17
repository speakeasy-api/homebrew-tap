# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11181 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.118.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.1/speakeasy_darwin_amd64.zip"
      sha256 "31daa89a82c4e1378f1f3cf90019aec60e64afc678b14a806a67f576d27672e7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.1/speakeasy_darwin_arm64.zip"
      sha256 "1c6edf582d1c71840ba1be93c1c7e22702ed90e249f7681a6c3c2fb2c1fe6be7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.1/speakeasy_linux_arm64.zip"
      sha256 "cf32f4c31a48354e9e8658cd360b041dfb86087f224c5ec1f5b3b8f26273ec0a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.1/speakeasy_linux_amd64.zip"
      sha256 "460f253586f7088e1e443efc05208b2557de8aec65f0de56cf32127bf054dcbd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end