# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11936 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.193.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.6/speakeasy_darwin_arm64.zip"
      sha256 "79f877bf4d65f463580e8be4eee94ec190fba69ba88bd44258be773d23fb5151"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.6/speakeasy_darwin_amd64.zip"
      sha256 "6404c2b0004d352cbafe89d1908779cfc9db82d49a6aebb2b0a42b8143e9b81e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.6/speakeasy_linux_arm64.zip"
      sha256 "e84840a853475afab34a01827ba98a092f217f5e3385e17146e89b1a54a46a4c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.6/speakeasy_linux_amd64.zip"
      sha256 "f253e9c0d46132551f2a58252f5f43826d9e309cfc3239bdf879d1ee02c391d4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
