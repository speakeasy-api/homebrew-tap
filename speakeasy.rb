# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.78.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.1/speakeasy_darwin_amd64.zip"
      sha256 "ef8a25c3b8048a02b0740537946f72268e2fab0ddb07872d5c39c659d8a240b2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.1/speakeasy_darwin_arm64.zip"
      sha256 "54f39aef42b2504ff731940d224bcd94aaef9fb3c83a77bb9653ec49b00c0fb6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.1/speakeasy_linux_arm64.zip"
      sha256 "446ac0310add7e27e0276678bdd03b667fae1e6d5b4c1bf34d1607e04a641aec"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.1/speakeasy_linux_amd64.zip"
      sha256 "3453b764cb8f5f51b8bbf6f5d3846408157546f9370f62d71f1480160b102806"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
