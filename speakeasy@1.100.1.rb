# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11001 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.100.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.1/speakeasy_darwin_amd64.zip"
      sha256 "7ca5d2bb8e461f97dae85a4ac6b9ce4bb19592a051eea3a371f190cffed7feec"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.1/speakeasy_darwin_arm64.zip"
      sha256 "edd48052f6eb9057ca46e9b4672f17d8c38ce010b80f69057fcc78c3b6692531"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.1/speakeasy_linux_arm64.zip"
      sha256 "11055f4bf7567326a7f2ad913747b7b5d819447532a9fdf9aebb7bdb35764154"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.100.1/speakeasy_linux_amd64.zip"
      sha256 "8f69e523b8a3967cedcbf5770411a018584301a873a6d379c94ccc79f2dd4d98"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end