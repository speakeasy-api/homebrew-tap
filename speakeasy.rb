# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.127.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.127.0/speakeasy_darwin_amd64.zip"
      sha256 "0b1a24e91ddf81f87c88dce4b4f30588e59e9665b27fd0414548beb85bfad83e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.127.0/speakeasy_darwin_arm64.zip"
      sha256 "7832d3e6fe00f5193704157f3d74552005211e4eef1afa0a4e2d9c4ded334834"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.127.0/speakeasy_linux_amd64.zip"
      sha256 "a2d92b6fbdf937ac8dda9e3442dccbfd52a84ce7092e4a3493db5b89d49fd890"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.127.0/speakeasy_linux_arm64.zip"
      sha256 "7b2174b5371d2d851e3575bac8434261cca3dd0ab3144f7127eddccc53e5a659"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
