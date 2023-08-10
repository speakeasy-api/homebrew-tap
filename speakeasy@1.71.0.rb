# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1710 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.71.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.71.0/speakeasy_darwin_amd64.zip"
      sha256 "367fea6347e878a21f9418e21c806b17ecb893667e08b91a255bf5762a65cdd2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.71.0/speakeasy_darwin_arm64.zip"
      sha256 "7b7a16305bcbad9561be912b1eb5a346f16562a9b594ddc3ae5f0506708cb762"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.71.0/speakeasy_linux_amd64.zip"
      sha256 "fa7628d8d1c3a3e7b4674ac6239e7522f0e943bab4e2556534af76af03d4e27d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.71.0/speakeasy_linux_arm64.zip"
      sha256 "05ccced21fcbe21450a83226dc27301dc4b8be5aab953ac76bc9c042fd3e4e4b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
