# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1682 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.68.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.2/speakeasy_darwin_arm64.zip"
      sha256 "7e0768eb2f61af57049a64244454e41d70bb02d809716423b07467bcd167c2f2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.2/speakeasy_darwin_amd64.zip"
      sha256 "458545a95109714f44ce36643fb503a0c0468d825113c2fac8e81f319a710a00"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.2/speakeasy_linux_arm64.zip"
      sha256 "0b2f01a228d13c066f8c967d2f2d06355840c2b06dab77575c2aea0fdbd654f0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.2/speakeasy_linux_amd64.zip"
      sha256 "3eda2f5d7f04a04bd438548b882c489ec926903a30e2c6528414e30c3c0c4fc4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end