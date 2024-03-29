# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11260 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.126.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.0/speakeasy_darwin_amd64.zip"
      sha256 "a45f5b55edf4268853721b7eb87dced3ea79c3775ed5c7aee55da0c24cbe6f9e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.0/speakeasy_darwin_arm64.zip"
      sha256 "500261dd1229b948af43d72e763830d2a74f7bc57905017da98cc58dcae55e7e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.0/speakeasy_linux_amd64.zip"
      sha256 "cf256cb72bd21c6ab03c8dd9f351a65deb7cbf2bbc55cbf526572b443c3167c6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.0/speakeasy_linux_arm64.zip"
      sha256 "b65ab1498f7ebf37e14a458380431dcb7ecdee141789c7dd2fa00cb20bc494ff"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
