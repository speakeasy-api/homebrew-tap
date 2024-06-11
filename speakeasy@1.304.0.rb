# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13040 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.304.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.304.0/speakeasy_darwin_amd64.zip"
      sha256 "35e8e2aac977050d0fb539e9a3ffd6e24ce624e89a2e6d9031edbb8d26c8250e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.304.0/speakeasy_darwin_arm64.zip"
      sha256 "f1fe317723aa402c561147b167a3736fc8e4b706ba0f844a6fbe3315de9e97e8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.304.0/speakeasy_linux_amd64.zip"
        sha256 "a482986304a2a61d8b31b7f0b4df5b8ba8a4bb78001d8ea250c0e6c22d3a4d24"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.304.0/speakeasy_linux_arm64.zip"
        sha256 "ccbd0dfccd3f841e5fd0a1c4f9314a617e07a81c164f3c0349287fdff31e26a4"

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
