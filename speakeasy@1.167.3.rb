# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11673 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.167.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.3/speakeasy_darwin_arm64.zip"
      sha256 "695ff34adc8c6d310debdcc8b28a56d8c7775c3a2fd5d0b5a6b2568a3290b8f9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.3/speakeasy_darwin_amd64.zip"
      sha256 "fb3f2a4000d8653cfc2cc5c900cc758b372fdf1209156fa69033010264195359"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.3/speakeasy_linux_arm64.zip"
      sha256 "efdc99221c8adb073de761897f3ab3cae0d7e118dcb602fe0297795848c79ef3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.167.3/speakeasy_linux_amd64.zip"
      sha256 "e40545e0d28b20d022ddaf79d2c84f40d1d20e4d37a7642ae09e0a174b504e82"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
