# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12122 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.212.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.2/speakeasy_darwin_arm64.zip"
      sha256 "9f74a79bee348d521308a571f47c7d1708a4208db354eca6f89887e0430d4d5d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.2/speakeasy_darwin_amd64.zip"
      sha256 "3e5eb630a94f7b3445837c63efd7bd23b739bfe008c9975e919322bd7b4a3d54"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.2/speakeasy_linux_arm64.zip"
      sha256 "ea15fc4990d457d9ee93e9deabe4805e6d1cfe2634ba256b96fea95f5507a694"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.212.2/speakeasy_linux_amd64.zip"
      sha256 "54ee7e6b217999f70675114b80688f328d465b7f859d65fbcc68cf29701cf93e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
