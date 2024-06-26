# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13080 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.308.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.0/speakeasy_darwin_amd64.zip"
      sha256 "67c2483af3bdeb6d2d76df89674bb14e46ada8ef9f0dcfbf7837904664b8f04b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.0/speakeasy_darwin_arm64.zip"
      sha256 "82c48af065b181c0359db55d67d0c70abf61ddd80f8af8a601d37297c2af8e49"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.0/speakeasy_linux_amd64.zip"
        sha256 "fdb380ecc3dab4250231f44aa039b292ead5baa5505f9f041f3c2a3399cd4ff2"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.308.0/speakeasy_linux_arm64.zip"
        sha256 "a68fde83c6a1c90e888ad48c4ceffc126a2655d0b35e32ab89e56bec1abe6586"

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
