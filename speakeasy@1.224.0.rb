# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12240 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.224.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.224.0/speakeasy_darwin_arm64.zip"
      sha256 "68f4d48ba50d986e13135b04fc99a5a19ed950c337697487b0663bfba184e396"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.224.0/speakeasy_darwin_amd64.zip"
      sha256 "f79636277e2f060e7f79f30b80506f5ad27d40c83f47bd0116b90ac8428cc84a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.224.0/speakeasy_linux_arm64.zip"
      sha256 "98afda5f73c7cf41bd79d1dc37e8c261a9bc85b580ab7d16de2af299c0104b7b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.224.0/speakeasy_linux_amd64.zip"
      sha256 "cf8e8a87239d9ed21d0dbb45f156daa86b7c98a3afad7e28cfc30ea81f579505"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end