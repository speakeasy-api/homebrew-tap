# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.246.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.246.0/speakeasy_darwin_amd64.zip"
      sha256 "f6aa417db51003379baddcc23cefbcf8603e88b71f5d59b82ebda49c58aad749"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.246.0/speakeasy_darwin_arm64.zip"
      sha256 "76a69c851523f66d8733be40a87a1ef25fb3f9e86cda427d70df86cdd7d985ae"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.246.0/speakeasy_linux_amd64.zip"
      sha256 "fff10963d9137e2ee143b5b49cbbc0f6922ee5a6bef619d89a136c787f1897e5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.246.0/speakeasy_linux_arm64.zip"
      sha256 "eb02a018a170384e42509d5490b80460ab69dd149e1cd1f94ad7df8613d030b3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
