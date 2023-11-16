# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.120.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.3/speakeasy_darwin_arm64.zip"
      sha256 "cb86829923e60f5ae21ef92ee5fdfa8eb9a933f4064c387c0ee84909d34caffc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.3/speakeasy_darwin_amd64.zip"
      sha256 "9007f8cfc10e14d46ffac26844ded98fa72058ee3cf98310d148349fe425874b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.3/speakeasy_linux_amd64.zip"
      sha256 "fe04dbb87e9635610596a5190d46ccac822807c806371c00d5b15476ef38f984"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.3/speakeasy_linux_arm64.zip"
      sha256 "9d14677495957f759ee2ec281c2a39c1b20a3a6433da519f2db581615c5bb15a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
