# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.42.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.42.3/speakeasy_darwin_arm64.zip"
      sha256 "6af0951c91af589e30f5fd56cfc6ecba75f72ef99a4efbbb97b2329eba6eb04d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.42.3/speakeasy_darwin_amd64.zip"
      sha256 "adc6ce0e67ee63233835e47b74a543aa48f5a94a699ea749d2b9750dedc5096c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.42.3/speakeasy_linux_arm64.zip"
      sha256 "066c298e72b6d6199fa61a9a35d3f67b0abfd99bda5e07a8be409643565e65e2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.42.3/speakeasy_linux_amd64.zip"
      sha256 "3fd53b73e4b6dc23afcfc36a5b29b23a26645ef346be279d286ee52f05f7c4b7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
