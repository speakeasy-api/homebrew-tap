# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12030 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.203.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.203.0/speakeasy_darwin_arm64.zip"
      sha256 "d5e042222b7e255b7334cfc0a1430b5ecfc8a4a84a10350a4f4d936b98b521ad"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.203.0/speakeasy_darwin_amd64.zip"
      sha256 "0c43d691ea4ba7638d610fbc3f89d6d711aa126cfb5e24648a9800ff0eac5c78"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.203.0/speakeasy_linux_arm64.zip"
      sha256 "1b115dbb9b998f8ce659f47fac1d47c526c31b2f0520483aa66c3f1999dca17f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.203.0/speakeasy_linux_amd64.zip"
      sha256 "b749228ddab27f76807795ea5cc04e11441a2195bdfe5afb0dc72ce3ec548af6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
