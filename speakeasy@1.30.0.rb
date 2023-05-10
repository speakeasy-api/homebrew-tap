# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1300 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.30.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.30.0/speakeasy_1.30.0_Darwin_x86_64.tar.gz"
      sha256 "069f0acb9298ca61cfc92155a6eb7b91e9f8a32d3d041cfc7decb7166dffc68d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.30.0/speakeasy_1.30.0_Darwin_arm64.tar.gz"
      sha256 "cde903ef4e6d74ebc812a98e6784ee293f1e42c20f606a9c79133068a8312fd4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.30.0/speakeasy_1.30.0_Linux_arm64.tar.gz"
      sha256 "510586196de5d125367349788481438f29330acb059f6aa1edc45cfdb7bf1f65"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.30.0/speakeasy_1.30.0_Linux_x86_64.tar.gz"
      sha256 "64a06bf689818c6d2693442cf0d4c37000882db8473d2cd8de73e3c23d71e249"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
