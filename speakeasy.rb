# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.490.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.490.0/speakeasy_darwin_amd64.zip"
      sha256 "74519f6ef87c2bcb1d109de00773c0d9128e6edec153873a83f7d8c00c1943f6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.490.0/speakeasy_darwin_arm64.zip"
      sha256 "3a93c1cdfb8a0804a6f5ce9a1fdbdf2421a56b259ce6166f0b6e9462f9afb426"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.490.0/speakeasy_linux_amd64.zip"
        sha256 "2d71696b9e153a7f1a6d44219a8f9b2c62be9c7cdff3ec6a2224b2d8b1f9a8df"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.490.0/speakeasy_linux_arm64.zip"
        sha256 "638da16fcf3b3b67cac0240c409be302d5355e3d85a5dd087e7b3e63c166a4c5"

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
