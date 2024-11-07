# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14293 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.429.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.3/speakeasy_darwin_amd64.zip"
      sha256 "ceab89f543be278a49d12d653c3588f2a93d798714e63541a8f7adc70b8a931a"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.3/speakeasy_darwin_arm64.zip"
      sha256 "e6c3d353233e40b71899a15fd0dd0a33790ab967c10d0ac910e97a7351a1f7c3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.3/speakeasy_linux_amd64.zip"
        sha256 "5d957ba7dcc3b595061b951a5f7640a1d12cac77ea42522647cad70715496291"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.3/speakeasy_linux_arm64.zip"
        sha256 "4cde06c36ee2ed834a433fefd21e30885f42d88c0ac7b793d9f51874b15639ba"

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