# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12851 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.285.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.1/speakeasy_darwin_amd64.zip"
      sha256 "a3ea60e70bdabefe9212564fbb369e8668159c75e8239a9f22cca5be5e82292c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.1/speakeasy_darwin_arm64.zip"
      sha256 "45c8502a7464113c721dc0493a112d63bf5fa35b9a8cace8f7f7d223b13ab091"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.1/speakeasy_linux_amd64.zip"
      sha256 "5d5c261299a95e3499f62ed079107a4e948820b8df2b2ef76d2492f520d90df3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.1/speakeasy_linux_arm64.zip"
      sha256 "38a1705ebebbf187f7992b56f484049a45fc41ee749d88d8b97c718790b3b44f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end