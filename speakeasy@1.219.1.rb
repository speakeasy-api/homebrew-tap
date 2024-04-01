# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12191 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.219.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.219.1/speakeasy_darwin_arm64.zip"
      sha256 "9904c3a6040a46ddbe61bbe568923321af3dcbb8dea9d7457ea8613b2be80649"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.219.1/speakeasy_darwin_amd64.zip"
      sha256 "95bed686771f957cf62b51a7b62e8c7734b0ccadfcf6342b457b63b6b7249710"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.219.1/speakeasy_linux_arm64.zip"
      sha256 "6b3541e2f7bd4a33fffff2f7dfbef362e25a7bad00653456ab72b1d134690d4a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.219.1/speakeasy_linux_amd64.zip"
      sha256 "da0e18e0bb01eef37b8a1ec48df6f4fbe9abf8e0b4b200d1caaaddd9bca08e56"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end