# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.51.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.51.2/speakeasy_darwin_amd64.zip"
      sha256 "857c943da6a2a0a58c8db38f86b6aaedbcddf42078ab0bd5065b0ab93b68d900"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.51.2/speakeasy_darwin_arm64.zip"
      sha256 "c378f5301797a3772e9a3e2c906a572633356be5b96d6060fb3b7f4f0dc3e5fd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.51.2/speakeasy_linux_amd64.zip"
      sha256 "491ae03d2f4b54d56f54eab895b7b101e6e0bdae936c3868fbde0e696c85a03a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.51.2/speakeasy_linux_arm64.zip"
      sha256 "d9ef776e5f6e36004e060164d0d8a475e395dec549a5f9eb9d13f46c64b71e6e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
