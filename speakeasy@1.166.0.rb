# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11660 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.166.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.166.0/speakeasy_darwin_arm64.zip"
      sha256 "64cff3d1239b8feef90f1e0453391cd019c854a908e67885d821db0b86ef97e5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.166.0/speakeasy_darwin_amd64.zip"
      sha256 "60d53b4486730a42d7d04ab47df1dcebcb7c070ec6d2ec5fbc86f2c711aa6949"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.166.0/speakeasy_linux_amd64.zip"
      sha256 "25088b91a676c702e47295b8c5ed34604195f8b3f6dd475a65e003f4db178465"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.166.0/speakeasy_linux_arm64.zip"
      sha256 "6a8bd6faa092b2d7e4e96ff7517aa911a9c9228eaaa254b5b22f50df36f8bd1e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
