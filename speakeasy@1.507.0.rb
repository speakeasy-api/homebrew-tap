# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15070 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.507.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.507.0/speakeasy_darwin_amd64.zip"
      sha256 "91b6308e0b2bd3926f2acdaf4f6b3a5e8e84e38860683ef35d46f139a2877ef1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.507.0/speakeasy_darwin_arm64.zip"
      sha256 "7604f4d56df0dbea7678a52cbe6db69c368f51b617f20be3d7659dd2af8ec9ce"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.507.0/speakeasy_linux_amd64.zip"
        sha256 "ff2ffb610bb42765b801a314439c594058ac29f30348493522520227a6f4b570"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.507.0/speakeasy_linux_arm64.zip"
        sha256 "9e63fdb680ebf576ba4111d26ab9cb1141d42c065857b78dffb78f682e91cd58"

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
