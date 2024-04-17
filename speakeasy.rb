# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.256.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.256.0/speakeasy_darwin_amd64.zip"
      sha256 "9291d4099d18596529135b645e4cda4e7818b5796478c13351789e15899b8bbe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.256.0/speakeasy_darwin_arm64.zip"
      sha256 "e85db280b3412566ee9fd4d685d858db54369b61c430683ec5289102c67c2361"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.256.0/speakeasy_linux_amd64.zip"
      sha256 "553506efa42e146fae90480d4a2099e8833152804910a0ecc2744220b4469b91"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.256.0/speakeasy_linux_arm64.zip"
      sha256 "06683f98beb52c09c25779c0b16b911da96802e6e0b5729e83a5df38e38452d2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
