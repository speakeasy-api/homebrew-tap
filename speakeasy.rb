# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.120.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.5/speakeasy_darwin_arm64.zip"
      sha256 "3b895cedf2470fec15e2aff61ac6741dc87cdadc5b9963eb897d93b9814aeb0c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.5/speakeasy_darwin_amd64.zip"
      sha256 "76585c7d7cdf4d4118398bdd22d09c46193b3aa45dcffa871e4a119bc2d5afad"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.5/speakeasy_linux_arm64.zip"
      sha256 "038e0dfb7b33e06f86a3a8dea6dad0d2f2efe1e0880fa18da40bb11db2cfcefd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.5/speakeasy_linux_amd64.zip"
      sha256 "1ebb0f42aa41c00708dcccc0a8391cdc04cdc24957e05850e4d2b4760da26451"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
