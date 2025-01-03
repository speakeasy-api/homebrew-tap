# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.460.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.5/speakeasy_darwin_amd64.zip"
      sha256 "e96b6c396dbf1592a22a1d45490e55c7326678b9093b2e0094582b9a1ee36c39"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.5/speakeasy_darwin_arm64.zip"
      sha256 "8a6c545198fbe6cb232752a5ddfc85489a9e2181cf7e50e3e7887ee85bebcdd1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.5/speakeasy_linux_amd64.zip"
        sha256 "2213f4dc6819c759ec436180bf1af11818903145881fa69cb630e3664bd90708"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.5/speakeasy_linux_arm64.zip"
        sha256 "ce5c2abd10de8837f14c4d2768397470636cc823df2ea30f3d793c9827881a17"

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
