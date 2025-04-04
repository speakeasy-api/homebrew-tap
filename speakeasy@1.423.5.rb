# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14235 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.423.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.5/speakeasy_darwin_amd64.zip"
      sha256 "d117930209843e654dda1078858fe0b0929a151344e88d248217cfbb631d7a9a"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.5/speakeasy_darwin_arm64.zip"
      sha256 "1f44dbb57bfd447b49c88983a44ae3f0bc9d14e43cc4c65692c7d4a179b85efe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.5/speakeasy_linux_amd64.zip"
        sha256 "c9843eccd7973b9a273318dc12093043a2ef514f27eef60f286d7a3b16655769"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.423.5/speakeasy_linux_arm64.zip"
        sha256 "64ab42e9e72ab3e4b0fc381bf982bf922dc2ef480e0dd9e79fa8a49db7b362e8"

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
