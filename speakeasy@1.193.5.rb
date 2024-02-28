# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11935 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.193.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.5/speakeasy_darwin_arm64.zip"
      sha256 "8db3f7f1e6c098a676c2b718babdbb3c35a91cfa19ab8340114b774b2c5b46d8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.5/speakeasy_darwin_amd64.zip"
      sha256 "5e63d1e77988e0b65bb2b842e465fbb54e6421ba5595f1f39c0213594eb0a957"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.5/speakeasy_linux_arm64.zip"
      sha256 "02a9ce93ca134f38f8e092b1f6e49220ed364679f6525327727f2588b3c78fda"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.5/speakeasy_linux_amd64.zip"
      sha256 "049628dca351855b94361c4900b53d739672ace00f3c4d11949dde5c552fce0a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end