# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1790 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.79.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.79.0/speakeasy_darwin_amd64.zip"
      sha256 "a393fc383c4db8c5222202bb2c6ecb91d40017018d03aceb6c5044c7079c1cad"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.79.0/speakeasy_darwin_arm64.zip"
      sha256 "cccdb8a1cc21e34c00d36452b2a725a5906d5d1489e0e62e43f37f41f0762938"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.79.0/speakeasy_linux_arm64.zip"
      sha256 "1b5e5ae371514117f271e50ece4729265dadba44ba2e85b37a50592e3fb0e34f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.79.0/speakeasy_linux_amd64.zip"
      sha256 "e9fdfd079dd5eccdff2a15b936fd1267eb5287f951f8a61d5d8a1efa8ff846b0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end