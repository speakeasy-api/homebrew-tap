# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11432 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.143.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.2/speakeasy_darwin_arm64.zip"
      sha256 "5b5a360b318ba91e90e652d26236fb678495a03073f313baf55e550d989c9e92"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.2/speakeasy_darwin_amd64.zip"
      sha256 "484d42fc6e5bb8c4624b3b47c66c4614ba6cc35f169e7a39a05ceff5e9eae161"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.2/speakeasy_linux_arm64.zip"
      sha256 "ac022d3af4474b7b329e8617ddb9ac0d4f6f413c265268b3e67eadd3a3bebc12"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.143.2/speakeasy_linux_amd64.zip"
      sha256 "f75e1142af02f79df0ef3e92e89366b91878b12a5cfdae89ae157b5a1fedb67f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
