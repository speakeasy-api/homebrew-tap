# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.205.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.205.2/speakeasy_darwin_arm64.zip"
      sha256 "669c2413d53078342fa02db24c5ee938533c96377f565d5ab8c59ced5193ebef"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.205.2/speakeasy_darwin_amd64.zip"
      sha256 "db0343eba641f18392ce0ace127ddd8bb15e554ac6e719d12d6c0c399092f6a1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.205.2/speakeasy_linux_arm64.zip"
      sha256 "01ed4501a90a5b4d006ca22fad86c046958a0b29f8d01375a340e2300eb68ba9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.205.2/speakeasy_linux_amd64.zip"
      sha256 "7b25d9fe14e5a32a97684109c98cc5602c3695c6e002601af41ba573a21da73f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
