# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.525.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.525.0/speakeasy_darwin_amd64.zip"
      sha256 "1904add9ff7ff0026245240f7bc7a4644b10dc4e6ef8620d6f4475bdc5b59f00"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.525.0/speakeasy_darwin_arm64.zip"
      sha256 "0d6660931eea7d86ac1fdff0c001913d82139fd3c5e62cea818a3c559ca9cccc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.525.0/speakeasy_linux_amd64.zip"
        sha256 "f17c88ae5fa2ffc15f4a3b23085fbf9faaeaee562450cc8a3f7cdda06c8c889f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.525.0/speakeasy_linux_arm64.zip"
        sha256 "e935ecf74a9bc9b380bec4ec9455d05cb83f258108a28f3e2e61f2f362c32553"

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
