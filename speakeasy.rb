# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.116.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.116.0/speakeasy_darwin_amd64.zip"
      sha256 "e3570ef2bb42851d7cde22e98d019a09ebda0f4dbf42e0e683ac90654463162f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.116.0/speakeasy_darwin_arm64.zip"
      sha256 "7d849ea3494cfbf0d73529d8aaafa2204e410e9d4e42d16a50f0188d8a8ca09d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.116.0/speakeasy_linux_arm64.zip"
      sha256 "78c95fc2f8c24c0f1196dd36a8409d2d2865aea9397de4d26670d23f9b22eb6d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.116.0/speakeasy_linux_amd64.zip"
      sha256 "55bcdaf824ae53a505a2c45d6abcd9a00bd0afa156cf455e0c78aaef68d38c47"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
