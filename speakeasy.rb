# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.9.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.9.3/speakeasy_1.9.3_Darwin_x86_64.tar.gz"
      sha256 "b8dccb4a9b451ff1ba1d82200641a582c624840a4f8bf4040158a5d90132ceca"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.9.3/speakeasy_1.9.3_Darwin_arm64.tar.gz"
      sha256 "6ee5997bac00a925d2b0faf13e000f78fc2ab21eadb57f4692c499f27c0fa4d8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.9.3/speakeasy_1.9.3_Linux_arm64.tar.gz"
      sha256 "8f6a555133c349530341a68d1ff16c021af8c0abcfa3033d1d64d57866c66f5a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.9.3/speakeasy_1.9.3_Linux_x86_64.tar.gz"
      sha256 "71953f53eeb80b31fa0f7d717eaf63617b5fe5a439365524bd7b925bf32f731b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
