# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT0205 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.20.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.5/speakeasy_0.20.5_Darwin_x86_64.tar.gz"
      sha256 "78886858012b47068ccca81a1194328a9b9a0ac860db63c465ffe1e5505a76e4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.5/speakeasy_0.20.5_Darwin_arm64.tar.gz"
      sha256 "a3499f14982d62d90b12e236937d249510d39a701c8e9941e5a11be8d345e205"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.5/speakeasy_0.20.5_Linux_x86_64.tar.gz"
      sha256 "7322b7ca240bdbedefece4c66120453994a235294cdb1aff850359387a9a2c44"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.5/speakeasy_0.20.5_Linux_arm64.tar.gz"
      sha256 "46dc66395dc882a2b101edaf402b327b3f8e36d7a5bbc3a04ed2ebfced192094"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
