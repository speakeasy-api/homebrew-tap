# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11261 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.126.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.1/speakeasy_darwin_arm64.zip"
      sha256 "000e62c7dcb94c9faf70bf1b1c62b938ea57599ac0be68355fdc49836684834f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.1/speakeasy_darwin_amd64.zip"
      sha256 "5422c1f75f6003680c3c0a3132e4c4ff6279bdcf487fcee4f95180cc8ac6f0e9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.1/speakeasy_linux_arm64.zip"
      sha256 "092f79de278b3cb780ded745e7bccce06ab6c26dcb464c3d6f81d0ee7831c6d8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.1/speakeasy_linux_amd64.zip"
      sha256 "582fd0d9e24e991e8d264518a4751c123f427e0ef11636d496ed308788600bcb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
