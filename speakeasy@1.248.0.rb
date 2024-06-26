# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12480 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.248.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.248.0/speakeasy_darwin_amd64.zip"
      sha256 "8ee81e4df872f6eeb84e728bfd8cec8ab9004a38f2c5831d3ec86cecb282c778"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.248.0/speakeasy_darwin_arm64.zip"
      sha256 "06d7c6e44d75b9ebae13b1cd7fd02e495cf0855c2df1374b0453915759894591"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.248.0/speakeasy_linux_amd64.zip"
      sha256 "5a2872a995e2782e13fa7d1c49f01a39c0f4e14d13e4bfe21e0939290a80bec8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.248.0/speakeasy_linux_arm64.zip"
      sha256 "bed697f68e15e81bfc648f325b4d632b3a6b75edc3ad1ff45d0e6c7f6185a948"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
