# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.21.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.21.2/speakeasy_0.21.2_Darwin_x86_64.tar.gz"
      sha256 "7bd1ee465323b823fe78e049ac1cd24ad98d471dfdca0edeb28fe5b73c1710d3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.21.2/speakeasy_0.21.2_Darwin_arm64.tar.gz"
      sha256 "20ce8dd2e09d9a775c70a84c60011d88063fe4bad017d97fc52a17aa30cfac62"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.21.2/speakeasy_0.21.2_Linux_arm64.tar.gz"
      sha256 "ba5aaa70e0e298aabc5424c9bb1c8f1b4728718d521f0d88148f14e165f05c89"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.21.2/speakeasy_0.21.2_Linux_x86_64.tar.gz"
      sha256 "df1f42c4748c88582df0e6fbd0ea768e8c16fe7eeb085d53e36a094f924860e6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
