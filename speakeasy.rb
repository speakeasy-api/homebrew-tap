# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.91.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.3/speakeasy_darwin_amd64.zip"
      sha256 "326cb2a89bc60643a4e99608d8bcdbbf4d768dcb43964c532f2b1dd8c51f3e13"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.3/speakeasy_darwin_arm64.zip"
      sha256 "dc30445de905db9185923b313610deab8f50508e4152a611b38eeed2461b5407"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.3/speakeasy_linux_arm64.zip"
      sha256 "0ab58d0c64889c9a5ead93be5c112ba1769e5250aee27d07f2167449ff84036e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.3/speakeasy_linux_amd64.zip"
      sha256 "214f61da53ee20663a1b4f4cf344b535578edae5c7088c802a584259ff4cfc79"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
