# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14800 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.480.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.480.0/speakeasy_darwin_amd64.zip"
      sha256 "33f98b8824bcd378939411970f54f5cc1eccd137d2cbe500ec4df9fab1d2d5cf"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.480.0/speakeasy_darwin_arm64.zip"
      sha256 "6153fe63221039de85e6589f0855400d9e3012ec17950f92fa6f626c5f850da3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.480.0/speakeasy_linux_amd64.zip"
        sha256 "f6d0132e85991c59d5584c1990f8bef4a25711c3f18f10406e101e25a222fd5e"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.480.0/speakeasy_linux_arm64.zip"
        sha256 "59c254fe91f76a12757c7eeb70fac5f71c21354d742c7f80457a55516df7c4f2"

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
