# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.13.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.13.6/speakeasy_0.13.6_Darwin_x86_64.tar.gz"
      sha256 "9147ba9a431e6d0e5ec87f8aee2718aa0b905e044349eb2d127fb765ef38a9c3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.13.6/speakeasy_0.13.6_Darwin_arm64.tar.gz"
      sha256 "69447a97745bc68f7076c80bef4b1741b034f999c19f4677b32a47936e1459cf"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.13.6/speakeasy_0.13.6_Linux_x86_64.tar.gz"
      sha256 "1f8dde4871646020fbbd3ce6b7fbc0ed3303a9a20d907dcb85c841e76ea966f0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.13.6/speakeasy_0.13.6_Linux_arm64.tar.gz"
      sha256 "b7cb3cff181d785f556308ede0ce0ca2e8fc432ce6bf9736a4de9cf0b9f44749"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
