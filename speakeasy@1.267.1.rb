# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12671 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.267.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.267.1/speakeasy_darwin_amd64.zip"
      sha256 "9cb29f812f85593eb9a471aaae737c38d34d133d59a216246b4261b661d73488"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.267.1/speakeasy_darwin_arm64.zip"
      sha256 "501bf9ef35df2b22ec0c8423e4030d90d70df4a758335195087b3ba7ea7d0b05"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.267.1/speakeasy_linux_amd64.zip"
      sha256 "7389afdd7a134b54c697f26cff375b6c52375140dee4f6ea2a820b0355f85fe2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.267.1/speakeasy_linux_arm64.zip"
      sha256 "83ece4a5821d12b4444cbc34ee3ed6d11b82501ec646979432c65bc7d1cd44c4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
