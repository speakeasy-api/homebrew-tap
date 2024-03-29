# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1622 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.62.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.2/speakeasy_darwin_arm64.zip"
      sha256 "2d74d185acda8f2de066645818141cfb331b5d26543dd178f2d906b5c4f003bd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.2/speakeasy_darwin_amd64.zip"
      sha256 "fb28e35c7cd30d2438a5c37ce6ef60f1ac10e7431b786aa57641b74f688dc194"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.2/speakeasy_linux_arm64.zip"
      sha256 "2b4b01ee63325917d53628c4053808b8dcd7b5699391d497d32430744cf43922"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.2/speakeasy_linux_amd64.zip"
      sha256 "6ff4a18932ba3c2d6d73df3deb3690741da4cb0a611d5dcc725afbc644446d94"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
