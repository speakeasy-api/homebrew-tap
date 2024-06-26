# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12608 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.260.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.260.8/speakeasy_darwin_amd64.zip"
      sha256 "a575f61c482b17fe43e68d3e921b8ee8ca4cbf5b25b705d1657a4ae77a44caaa"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.260.8/speakeasy_darwin_arm64.zip"
      sha256 "8ad4e2227448bfa8ddbbb711527156fe9d6471e58bc893e0da0ca7032b9283b3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.260.8/speakeasy_linux_amd64.zip"
      sha256 "306c18a27b7ddb46c604e30034b28c37430c7f6736c1bb10365473293be8b656"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.260.8/speakeasy_linux_arm64.zip"
      sha256 "ecde5cf75024c4bffe551e21600f391842c8fb1ed09a10efa01160116f37922c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
