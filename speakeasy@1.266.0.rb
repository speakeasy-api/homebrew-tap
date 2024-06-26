# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12660 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.266.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.266.0/speakeasy_darwin_amd64.zip"
      sha256 "ecb5c7dc47534a449373e3423c9a77a2da6a412f5f6b9cfc28295640622bd859"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.266.0/speakeasy_darwin_arm64.zip"
      sha256 "fde0c96a60ad04029316f5fa3c85cb2d5645fde509d54539da322a836e2cd7ac"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.266.0/speakeasy_linux_amd64.zip"
      sha256 "c134f55d203db51598073af421fd8768e0eb0a706f5d04956730ee52caa16e69"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.266.0/speakeasy_linux_arm64.zip"
      sha256 "953d7950e9dd5dc598fd15adb7e5786f6064233209d3632bb23c50675d265004"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
