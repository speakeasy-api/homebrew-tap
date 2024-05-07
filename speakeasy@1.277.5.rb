# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12775 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.277.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.5/speakeasy_darwin_amd64.zip"
      sha256 "9bd2858e66ea3109950f20c36d31762df47aa5429c3aa8c2c24b57dfddff1896"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.5/speakeasy_darwin_arm64.zip"
      sha256 "2ffc48754669d906a4efcfd0b6ba50ef5892f6b971ebaab49ba5794c162734de"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.5/speakeasy_linux_amd64.zip"
      sha256 "0bbc6d4979a1bac0d9d3a728f29ad9bca002209a195a17e5d09b3ba3ce11360a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.277.5/speakeasy_linux_arm64.zip"
      sha256 "f346c9c4c88b075c75f0f85135e3485712237c2655709c2b40009799634a882d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end