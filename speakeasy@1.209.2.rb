# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12092 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.209.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.2/speakeasy_darwin_arm64.zip"
      sha256 "969ce1b41f32236a51c6adff610879c84558fc41db552043efde47a145383c43"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.2/speakeasy_darwin_amd64.zip"
      sha256 "006dfeddf73d63b7266d251f7fcb0558a81a3d5a7a708fb3199fe248c5240895"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.2/speakeasy_linux_arm64.zip"
      sha256 "6b61bc75a1df29c0154fef021ec7615db56dba08969b1d827bad671a7ab240b5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.2/speakeasy_linux_amd64.zip"
      sha256 "b5294849b18fe4142a86474b77c36cc430c8a5cb1f33bba874389f66e0fb1401"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
