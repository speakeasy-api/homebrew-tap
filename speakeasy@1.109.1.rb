# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11091 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.109.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.109.1/speakeasy_darwin_arm64.zip"
      sha256 "09e7bd9e42d8310a501d1b8da0362dd3baa22f40b53dee3547f6cbd8cd73b97b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.109.1/speakeasy_darwin_amd64.zip"
      sha256 "3c64b21a33e174611e7c2b50b97aa1768ad14e2dc725540f8ee3c0683c925258"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.109.1/speakeasy_linux_arm64.zip"
      sha256 "144235e0d6c1933ac05b36ad06cff390e3ee81f50bec126b21f095befb0d52d6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.109.1/speakeasy_linux_amd64.zip"
      sha256 "c44eadc3ee4a9038828e60ee75100073ddb2bb797158867f9541ce48fc76ccdb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end