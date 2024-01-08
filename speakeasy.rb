# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.134.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.134.0/speakeasy_darwin_amd64.zip"
      sha256 "3341d2d790eca910d6b02ed6d032fed7b83e9ece288fe5aea412da66d2cf0545"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.134.0/speakeasy_darwin_arm64.zip"
      sha256 "a8d650a3fb432397ffee0d75bd0314705493f0478ee79ec0167d748951277b50"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.134.0/speakeasy_linux_arm64.zip"
      sha256 "c1b0a3daccdc8ad731da78373858e8fff098ee6798a8ef6350bdef766ad2e7ab"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.134.0/speakeasy_linux_amd64.zip"
      sha256 "2484c30feed3e623b2219d3e7ac93fa52fd878cdde26e33804decdb09ff08871"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
