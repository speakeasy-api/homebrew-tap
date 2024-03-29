# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11000 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.100.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.0/speakeasy_darwin_amd64.zip"
      sha256 "b66bb6e0acead1ac41fd61f4ccdc679664f0b70170fb7306653290e9965d24ac"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.0/speakeasy_darwin_arm64.zip"
      sha256 "887723ffed5683e108661b156419739cd02c71a75e5538b5bfb42c5f9c4693d3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.0/speakeasy_linux_amd64.zip"
      sha256 "9b1ebe42a6ef25020afd4a2232a7800f41ad92fbd286b265182eee3fe73293f6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.0/speakeasy_linux_arm64.zip"
      sha256 "d7eb5d8ae7737b192770a8307664f3e9efe6e72027b7f7230d124f8da9382e54"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
