# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1550 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.55.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.55.0/speakeasy_darwin_arm64.zip"
      sha256 "2ed9fad6de65e8177cb66fe645892d4de3989ea93ae9ea112d8021566acec236"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.55.0/speakeasy_darwin_amd64.zip"
      sha256 "0dbb4fb6dd013cf59c883d93b9660f09eab73577decdd097fcbdca041577c2d7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.55.0/speakeasy_linux_amd64.zip"
      sha256 "d9de3934e4f24e99185b0e1bb944f1462ce71c6cff97ed99630845f241a9d2bc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.55.0/speakeasy_linux_arm64.zip"
      sha256 "069bce360046455089cecd37389a039177aca621c923211113ed819e00fd59c1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
