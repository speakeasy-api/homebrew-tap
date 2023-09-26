# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1789 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.78.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.9/speakeasy_darwin_arm64.zip"
      sha256 "a88c92d579cb95c6a996201b44bab9c92f8a8008a3aa1f5cfbcafabc0fc10a79"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.9/speakeasy_darwin_amd64.zip"
      sha256 "0f37472739d52d90df66510e272ecd5f6f443bf40c3a01845e461a829c6f2bb0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.9/speakeasy_linux_arm64.zip"
      sha256 "f3b7399384753c3fd0e6325b95b7c065ca9853b5d3e5908b5a345468eda26c43"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.78.9/speakeasy_linux_amd64.zip"
      sha256 "faee0c31881f8246a52c15c7e2881ca959e2f9e8304dbaa27e07026c6cf564c7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end