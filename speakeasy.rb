# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.249.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.249.0/speakeasy_darwin_amd64.zip"
      sha256 "074582a12df2cd707abc0270e8b8d3ca211f291bfdedc3c8ddacd38481477bca"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.249.0/speakeasy_darwin_arm64.zip"
      sha256 "801fd304b1725a2588f4fc6cccc2ed0e99180a0da4ad7f1c5da3b1e10fca4520"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.249.0/speakeasy_linux_amd64.zip"
      sha256 "5e217ebb623415fdae283415726de9bc103934b0a1f486bc91d0026dbaff2e0d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.249.0/speakeasy_linux_arm64.zip"
      sha256 "15d5599f1e9badffcb752a9fb1efa3ca936e6cd14d1cae87d843b991abbaf22b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
