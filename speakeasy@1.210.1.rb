# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12101 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.210.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.1/speakeasy_darwin_arm64.zip"
      sha256 "6fd8fec7f10735b9c0143a34931d77faf4c4ec6f097f36a9d2ff048c21a6c07f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.1/speakeasy_darwin_amd64.zip"
      sha256 "786c502dee6f9041a2ae1f1574367bd827b38848d4df8ea2fe144d7a6a977c2a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.1/speakeasy_linux_arm64.zip"
      sha256 "23ae17e93d7fc40f72b6e074767e6705928943ebf36e367738ea897bb74eab8e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.210.1/speakeasy_linux_amd64.zip"
      sha256 "d2bf87be66ddbcb67478acd41219e756de7bb0a9f046fe24e8f5a05008676b7a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
