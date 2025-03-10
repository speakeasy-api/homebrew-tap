# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14850 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.485.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.485.0/speakeasy_darwin_amd64.zip"
      sha256 "5564c56a8ccc538554a6a7b5a0cd04ed152063192d4e6daafe63c8ee841e3405"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.485.0/speakeasy_darwin_arm64.zip"
      sha256 "1a0f6d5823f8498bf5e50ede26d727195e493f7a049db7846d1768982664242d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.485.0/speakeasy_linux_amd64.zip"
        sha256 "438051056a7fb8641cc43205724cad4902e52be359291081bd2b0cc635066542"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.485.0/speakeasy_linux_arm64.zip"
        sha256 "f403ce2ff2fc049181b31d258e7be6c4c639cbc02891eee4578d496822bb029f"

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
