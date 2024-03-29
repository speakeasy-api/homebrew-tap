# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11740 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.174.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.174.0/speakeasy_darwin_amd64.zip"
      sha256 "05711d6d6faccd893c4ac661eb2eca859bf5d08426865dff8cba64d0b219c13f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.174.0/speakeasy_darwin_arm64.zip"
      sha256 "a7baa15d7ea15cf9509ac13b83bfa62789545a10bae902ed4826cf7419c1da17"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.174.0/speakeasy_linux_arm64.zip"
      sha256 "e77b9dccce3890968a2e96fd4624679c88b321a0ff54902206abb566423f1c37"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.174.0/speakeasy_linux_amd64.zip"
      sha256 "9e5528796d812d32e2d01718fdc945ad2cb47f8b8839f6ddb0bb25523179fa4d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
