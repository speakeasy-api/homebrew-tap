# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11550 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.155.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.155.0/speakeasy_darwin_amd64.zip"
      sha256 "8c234392773e34e50bf580aeacab02bf783d3d0d26389ab8e061b079906a1d69"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.155.0/speakeasy_darwin_arm64.zip"
      sha256 "f5ed1a5b5b255f4c97188bec95805ad7168ca709a95c97873d56283c61c0bfb8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.155.0/speakeasy_linux_amd64.zip"
      sha256 "1cd61b572b48c83e13cd99ccf062e6f219ea4279a35ad520ebf37d2387ba6058"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.155.0/speakeasy_linux_arm64.zip"
      sha256 "cdd4cfac7ba9b628cf6b47abcfb6d40d0bd7b001cf641a2ad48a85b20a9aa902"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
