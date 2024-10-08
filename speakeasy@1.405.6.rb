# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14056 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.405.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.6/speakeasy_darwin_amd64.zip"
      sha256 "8d37c51b5949eade2c1a72e9e2627926f423e5b6ece2a5852b9ac8c7764184ee"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.6/speakeasy_darwin_arm64.zip"
      sha256 "552ea61b5c33b0eace5b69d1514e483bc61dafd67f6f2f8317c118ff13184012"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.6/speakeasy_linux_amd64.zip"
        sha256 "49cb45f359202d3692210a2446bcb562e906a84f61085883c131b97132784d27"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.6/speakeasy_linux_arm64.zip"
        sha256 "61aba1b307376efbc6e6f465ae7b323a07948f9c9564350941aba370ba43fb99"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
