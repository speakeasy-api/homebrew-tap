# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14600 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.460.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.0/speakeasy_darwin_amd64.zip"
      sha256 "3caa25cf0e63b01d731063b8e2a5630b5e893046114ae86e4fc929806b6c333e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.0/speakeasy_darwin_arm64.zip"
      sha256 "e24bc1bd731269f11a235fb0bbd178fc80d991478900f8a04c100ce2be4d931c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.0/speakeasy_linux_amd64.zip"
        sha256 "041518824479e7b5a70f5149710a1b044a5505cffc91bae891267855e3a014ba"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.0/speakeasy_linux_arm64.zip"
        sha256 "851db1f0e345208215b390d412832bac99adb58528daef62ea33b1bcb9dfbacc"

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
