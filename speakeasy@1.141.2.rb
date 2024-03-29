# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11412 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.141.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.2/speakeasy_darwin_amd64.zip"
      sha256 "7f2c851f90b5ccd1286900d94a7c39d140d5332623dd625f2366153fa3279fb8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.2/speakeasy_darwin_arm64.zip"
      sha256 "1701c75807178c16fe71730ceab083914993daa110b61b0dc50a738c0f2fbd74"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.2/speakeasy_linux_arm64.zip"
      sha256 "73c2a81332e52e2795c2e730f268543fc8c51902cb474e933cac370c77d1eaaf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.141.2/speakeasy_linux_amd64.zip"
      sha256 "0542f0b18a43cd74b430dee48b765cc4102e8641d8851a347c417bd2d41e8411"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
