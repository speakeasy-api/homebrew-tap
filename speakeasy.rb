# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.74.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.16/speakeasy_darwin_amd64.zip"
      sha256 "c9ab71af8090aed1b0310017b1a0097a541bfe7b31417dbef1345ee116d678be"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.16/speakeasy_darwin_arm64.zip"
      sha256 "f564e172600118058edfa8b42f1503dc5ac09c532f1c39b1f060a6144c328805"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.16/speakeasy_linux_amd64.zip"
      sha256 "d2bba67b77a762f1ec2fa86aab1cf9f42cee257a72aba2522409895c24b41732"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.74.16/speakeasy_linux_arm64.zip"
      sha256 "30a945ec9122faeb20d836134d4d195418eda0b798adcb5ec52f7df6f95b708e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
