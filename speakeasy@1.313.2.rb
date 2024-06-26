# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13132 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.313.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.313.2/speakeasy_darwin_amd64.zip"
      sha256 "086763d8525a531539078c20dead78781e9cd7aa372146ca6b212f36781e76ca"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.313.2/speakeasy_darwin_arm64.zip"
      sha256 "6f117dc4ad0fb0875135f7a0d2d019987a9f6959ca9a4a88913ae36cd02b3936"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.313.2/speakeasy_linux_amd64.zip"
        sha256 "8c6a2828666022a7e8529e885a2c9ae56bef7b21bf5e0d18e845645cb5b747c9"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.313.2/speakeasy_linux_arm64.zip"
        sha256 "1876b8c9a5ee0fb80635761ec17408327ba132189ab642d577c15fb9bb412674"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
