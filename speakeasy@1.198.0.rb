# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11980 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.198.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.198.0/speakeasy_darwin_arm64.zip"
      sha256 "1e826faa9e7fd31b7f23ba3a09c677ceadbb8fc44568eeeb67d5a667ff05aa22"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.198.0/speakeasy_darwin_amd64.zip"
      sha256 "eafb43dd233f97b98f400d00a7d3d1e9737c62d5b9c452a9807abb12b79c2cfb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.198.0/speakeasy_linux_arm64.zip"
      sha256 "7cd7eb599e2fb3b95c1512ced31d60e18a9a8bb90c1c0d4fe8890876112d01e3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.198.0/speakeasy_linux_amd64.zip"
      sha256 "960004a0e945a42cb6f033dd635152fe03c7895116c4f5ba8b26122b8ff5f65c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
