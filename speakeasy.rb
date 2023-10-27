# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.108.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.108.2/speakeasy_darwin_amd64.zip"
      sha256 "d72e0fea3927145fc0e6530b52e3a1c56567502eb185d69ffc897adbacef578f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.108.2/speakeasy_darwin_arm64.zip"
      sha256 "cad4c60cd8cea0fc8bd24fb114f9815bcb6a58b1ccffac46ccf1d6021b8944cd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.108.2/speakeasy_linux_arm64.zip"
      sha256 "7faa731edbe7360148f302d79e6e0e06ab5ff14903c152221c6b43385f8a3e86"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.108.2/speakeasy_linux_amd64.zip"
      sha256 "989d23a41e61ccb451a21290885e5e3d7679ba4a8d442462bf34ba0f25d5ac79"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
