# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12550 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.255.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.255.0/speakeasy_darwin_amd64.zip"
      sha256 "90bc601401be58574a58d50a8cd321cee732e44db5ae28235255513e4cf0f9cd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.255.0/speakeasy_darwin_arm64.zip"
      sha256 "f74a33486ba428ed94f73d875eef6dea347117374bf8f1562511a853484d356c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.255.0/speakeasy_linux_amd64.zip"
      sha256 "32ae238947382f7dcfd8aa7c64da1d64cc1d9189108ec28cbf6f53f1daa28560"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.255.0/speakeasy_linux_arm64.zip"
      sha256 "07eb13ede1914f865a0caa720896c9fd379e1761d349708f4f4775101b5f6293"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
