# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.12.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.12.8/speakeasy_1.12.8_Darwin_arm64.tar.gz"
      sha256 "2e5918d677cf2a50045211aaaacb80c8f21d9146d4665532a6eea9c797314660"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.12.8/speakeasy_1.12.8_Darwin_x86_64.tar.gz"
      sha256 "87133f3f2d7ead37b96dfa49da5e99c50732e088e3cead76fadab3ad09470675"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.12.8/speakeasy_1.12.8_Linux_arm64.tar.gz"
      sha256 "1cf819b6f2144cbdb36ac386e266839e77918abbae81d3f3e92fb4d4f8d8ebcc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.12.8/speakeasy_1.12.8_Linux_x86_64.tar.gz"
      sha256 "1918e7f4526617cbc8c88d259932e081a5e2802dd11a51d5e1a300c94b4f748c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
