# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12450 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.245.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.245.0/speakeasy_darwin_amd64.zip"
      sha256 "9733daa056738b4d5dd070428b0e73bcafc41093887dce9dad69cb71af9092db"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.245.0/speakeasy_darwin_arm64.zip"
      sha256 "ee93e31e8e72c1316d1603ba556662ba8256788646b6cf3fd7ab2c6a8537adec"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.245.0/speakeasy_linux_amd64.zip"
      sha256 "5d6a972ce10dd5926029cfd3e07f1dac2e064a775e6f7808c0937773c5743f50"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.245.0/speakeasy_linux_arm64.zip"
      sha256 "352e9c38e7c6719caedc4d43b5c01aab7ceb59ab2aeed1d96fb5267c26f3d1e5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end