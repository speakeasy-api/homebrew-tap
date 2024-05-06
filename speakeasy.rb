# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.279.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.2/speakeasy_darwin_amd64.zip"
      sha256 "a3ffb0e5aef33e36d510f400cd94dd041aef8a1e98888443ae062633e8ac685a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.2/speakeasy_darwin_arm64.zip"
      sha256 "b0205cca0dfe29f912643caf25ec976800cbf14cf5a39143d7d891822a21a262"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.2/speakeasy_linux_amd64.zip"
      sha256 "23fac9831c47026272303ff2ee7d20fe7f6b53c679c4f2475563365801489df6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.2/speakeasy_linux_arm64.zip"
      sha256 "040d2e5a7f426d2c589d06ce5eb4a307fe6773f0a934165a92dce1168555f39c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
