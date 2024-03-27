# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.228.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.228.1/speakeasy_darwin_arm64.zip"
      sha256 "4a7161d72b991b9419a63761c6eedc7d329c755fab98905a76aeef832404584c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.228.1/speakeasy_darwin_amd64.zip"
      sha256 "8ede3c63de756c8a874a52a0d22270afa08314c71ec5ec75994b57610aa8f363"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.228.1/speakeasy_linux_arm64.zip"
      sha256 "70c6501e80dbceb718b315d5a2f03df9c793a8113b38ea64c8732073f0a2bff8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.228.1/speakeasy_linux_amd64.zip"
      sha256 "96a729595f85df3d73b83677f8253a6052c7782b4bee652d135e7380b7509cbe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
