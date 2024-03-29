# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT140 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.0/speakeasy_1.4.0_Darwin_arm64.tar.gz"
      sha256 "055c6b2dcbfcafbcef2ef83f70b1fb22ae5c168b1ee1041eabbb3b4162a13847"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.0/speakeasy_1.4.0_Darwin_x86_64.tar.gz"
      sha256 "a4df6500afa1c3ad6b30747336044a6c132fd51166c8e9ae09c51ad98488138a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.0/speakeasy_1.4.0_Linux_x86_64.tar.gz"
      sha256 "315068bf9da683b04e6e813e4bc321994b9d330cf2772d4c01a4318fff662d6f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.0/speakeasy_1.4.0_Linux_arm64.tar.gz"
      sha256 "8962eeb73da806f36b56ee36ef6bab771fed3184498fc1868df9b8cff5916001"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
