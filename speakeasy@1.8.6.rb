# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT186 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.8.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.8.6/speakeasy_1.8.6_Darwin_x86_64.tar.gz"
      sha256 "7cac26927c9876792a62df38725e86e928664ecf593bc9a2144967f29cae0b35"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.8.6/speakeasy_1.8.6_Darwin_arm64.tar.gz"
      sha256 "f07323aaba688e11143ad39ee24595be955f9b3c2e6f9ce7d48529046165e783"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.8.6/speakeasy_1.8.6_Linux_arm64.tar.gz"
      sha256 "bb23a8188b40393a3b37a505572f892e39c63419a8c8cebb40701961dc5e4ba3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.8.6/speakeasy_1.8.6_Linux_x86_64.tar.gz"
      sha256 "ba2b265ef2512cabb3780e45332db2e6e6d36ed47e3edd86a3bac9172e384381"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
