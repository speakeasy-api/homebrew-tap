# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11040 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.104.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.104.0/speakeasy_darwin_amd64.zip"
      sha256 "de5021e11ce50d482a7b53d61caebe62eed2b345b38666821b2bf5a1430cecaf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.104.0/speakeasy_darwin_arm64.zip"
      sha256 "38b6f2c870950a8fc4080e3c7ff5cc4b96a19e73ab05715c35fdf129881d7f8c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.104.0/speakeasy_linux_arm64.zip"
      sha256 "9c20675bc029956f455a21d4dc450e6abc5ef4994108c39ef051622682bf62da"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.104.0/speakeasy_linux_amd64.zip"
      sha256 "9f18857f3e026f63be2eb75119a5fd4883efc00ff0049b77b4bedc43a55c7f49"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end