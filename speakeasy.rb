# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.191.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.191.0/speakeasy_darwin_arm64.zip"
      sha256 "decabfff2f01fc68aaaf163a90e227405475eb9438b5e04647985fc47bf5fcaf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.191.0/speakeasy_darwin_amd64.zip"
      sha256 "3c8f116769b286528eaa9b9ed7491aff6ace709e8190836e51d1689c4d881c0b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.191.0/speakeasy_linux_arm64.zip"
      sha256 "6b1f7a8ea18e7f33d0d8a7f6ce5d1008aa545b104325945e477c3ff8e28eb946"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.191.0/speakeasy_linux_amd64.zip"
      sha256 "230ed6fe7cd5dbe8f269f612574c7f9172ca0b62a021de2486f7261ab32b6234"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
