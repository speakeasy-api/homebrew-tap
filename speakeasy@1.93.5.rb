# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1935 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.93.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.93.5/speakeasy_darwin_amd64.zip"
      sha256 "2f6d24fc370763f38ac714e1597050b1285eee0543892a02172c74bd1e0cd258"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.93.5/speakeasy_darwin_arm64.zip"
      sha256 "ea5228090cfa5912c0a479ba2b92380de5ab4794e8fd9b7a771de26c16f7ded9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.93.5/speakeasy_linux_arm64.zip"
      sha256 "a95899eb374571338c5ad81d31e38560811bc9dbcaa58b383143e1da89db9dae"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.93.5/speakeasy_linux_amd64.zip"
      sha256 "cee314ff0e787d8d05a168fdcbfdc95b8e467b365a33a7f95b14a49b559a68c5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
