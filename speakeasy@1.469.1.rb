# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14691 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.469.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.469.1/speakeasy_darwin_amd64.zip"
      sha256 "c090beba2ce9772a83224770153212422d80e63539ce26d584d995ae20b824ca"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.469.1/speakeasy_darwin_arm64.zip"
      sha256 "bc832cc04eee4ad4e92c29bda6f0a518e91b69aaa003bf72a04711752721d4b5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.469.1/speakeasy_linux_amd64.zip"
        sha256 "6ed37f132826bb93a5cea66322ac422b2af0c3a8a85f6e42ebd41b451ecc2b3e"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.469.1/speakeasy_linux_arm64.zip"
        sha256 "6f2fbab5b28322f188fbe10c2c64768d3d8ea73a56281631d30bfb396eeffb78"

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