# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1621 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.62.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.1/speakeasy_darwin_arm64.zip"
      sha256 "b2570dd51906dcbfa583eeee4cbff6cf219f182f59b2eae542c2daf2f58e5082"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.1/speakeasy_darwin_amd64.zip"
      sha256 "89aba5d9f9d5452c5576ef27031c91f3a585937dc3fe23634805ba562ae2e1eb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.1/speakeasy_linux_arm64.zip"
      sha256 "a71f2a3ecc512a95f2e567542db9ce91a022e7cc5e3a1540686e130896d6c2f5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.62.1/speakeasy_linux_amd64.zip"
      sha256 "e2e946136661d5f0f753983201f0d2785bb74bb9fe935d6482191462b9af3749"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end