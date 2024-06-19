# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13010 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.301.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.301.0/speakeasy_darwin_amd64.zip"
      sha256 "7d4e72b15d28145e4ef7f6b2d2167caeb9f9332f40b242917885d2f179a1ca5e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.301.0/speakeasy_darwin_arm64.zip"
      sha256 "0a664f5059794da1d3b19ad33a5732a2adc59f9420ac4e03a35850d094164e24"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.301.0/speakeasy_linux_amd64.zip"
        sha256 "73bb21f9841c7b1095e43846b99e800f4d147fb9649c9c17015dd8267e9d0e3f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.301.0/speakeasy_linux_arm64.zip"
        sha256 "c84b9f1b9da85542ae36c221a4f2478404feec2d26b90fea1710dd034aa5e954"

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