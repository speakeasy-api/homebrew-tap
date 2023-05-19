# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1361 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.36.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.1/speakeasy_darwin_amd64.tar.gz"
      sha256 "c4e2f99957f08c3cdf33b662798685f6c7c5db41a3e8d17265792d5e34624f56"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.1/speakeasy_darwin_arm64.tar.gz"
      sha256 "fbdb38e8df1b86c943e319e7787c074f31d233af08bca12aaf9ae73b4cbaad5e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.1/speakeasy_linux_arm64.tar.gz"
      sha256 "4094df1bfc7b7b741cf85470185e65359d7339b65ef43351679812fcf831e4f3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.36.1/speakeasy_linux_amd64.tar.gz"
      sha256 "158a1c3303dee0307f12a04b9e17c97beef3081c4a58386b6b794c27cc7ae2d8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end