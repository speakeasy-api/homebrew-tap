# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1832 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.83.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.83.2/speakeasy_darwin_arm64.zip"
      sha256 "70c3e6b07a11d960c6fec78ff7456dbd940f5f660d7e6de47703ffd0f87e07b8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.83.2/speakeasy_darwin_amd64.zip"
      sha256 "5cd08cb7ffb7f8f429b191c85f69a2a9fc813cdba547a8c44b11f0c0f0d06f30"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.83.2/speakeasy_linux_amd64.zip"
      sha256 "7f648d80667758de90200b1a8eef0fa82934074814c5c7880dad3e3ae162267e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.83.2/speakeasy_linux_arm64.zip"
      sha256 "a76d0dcde92208bc40a7cf4ec30438d91f94535a08060c6521b64a9d8f0384fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end