# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12961 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.296.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.1/speakeasy_darwin_amd64.zip"
      sha256 "be1e2038b8fd91fc78f308b1827fe46472084dd32af392fb64b1d4e056b6e4f9"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.1/speakeasy_darwin_arm64.zip"
      sha256 "4c4d2d6d795a643d9fbd23fa1ab8f0b0deed558791095b727304020f7e72f5d1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.1/speakeasy_linux_amd64.zip"
        sha256 "8de163c2c83c0fabffa3e1f73c50a66ab71176c99edbf49f0d87291201807ffe"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.296.1/speakeasy_linux_arm64.zip"
        sha256 "0a6d557aa57390bd6940aa4042bea851f378ea898dca009ca9c312f42d759b1e"

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
