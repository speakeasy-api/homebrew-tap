# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13713 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.37.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.13/speakeasy_darwin_amd64.zip"
      sha256 "d157c8845e6a80bb0c7b6736796394c8602f143f8db479f9e16b8b74233ab0bb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.13/speakeasy_darwin_arm64.zip"
      sha256 "9611f3d42b72b56219232a9ffff76ef911d6767aff889598f6f8708af51812fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.13/speakeasy_linux_arm64.zip"
      sha256 "593a05e1bc9411a13d226a07db4303fc2217c827d3fea1bdd26c12ccbeb14374"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.13/speakeasy_linux_amd64.zip"
      sha256 "3346e4f9515c42d30a2741ebb832bd591bfaa23b967fff85f12fd62fb3f2f1d9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end