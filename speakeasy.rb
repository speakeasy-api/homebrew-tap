# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.253.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.1/speakeasy_darwin_amd64.zip"
      sha256 "0af6ea53480892b7029b12e4a833ca997e7416023ec3fd81392af4de035d7eb5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.1/speakeasy_darwin_arm64.zip"
      sha256 "2cc6c44e2fc09eb0eface5527a00982a7d2e723413640779a590482b9681ace6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.1/speakeasy_linux_amd64.zip"
      sha256 "5b968617fbfdb7d86d306acbb85343523a3126ef8c47a64e77f52a0b31c5f92d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.253.1/speakeasy_linux_arm64.zip"
      sha256 "e1adf7f1de36d4aef023cf5377614d54ce002e076e948b0b7c00e47f004b2adf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
