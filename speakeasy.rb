# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.284.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.284.0/speakeasy_darwin_amd64.zip"
      sha256 "1c2b60137a894c4db88a84a714ab36738767b1042b63075782eb540820b205a1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.284.0/speakeasy_darwin_arm64.zip"
      sha256 "a2d91f5f1faf292424b904ffe754f81aeb625b4beabf29b878e32a1901343b72"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.284.0/speakeasy_linux_amd64.zip"
      sha256 "e8576eb2c66e96d52060c418f95c49b3f9e3b49b2716cf74c33e284bd2caa02c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.284.0/speakeasy_linux_arm64.zip"
      sha256 "fd1f7252432e194cecf5458ea2dc97cce7f29301ff01911845d8ee46ded8cb1a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
