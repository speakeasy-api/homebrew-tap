# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1194 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.19.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.19.4/speakeasy_1.19.4_Darwin_arm64.tar.gz"
      sha256 "0571608c8d3c930e8f379e1ab654ad95517b3c2083166e0ae19eaba9df6c0af7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.19.4/speakeasy_1.19.4_Darwin_x86_64.tar.gz"
      sha256 "d946acc65b7f42a8a6536251e8327637cef05aef73a91a44a6a51fc67ca1fabe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.19.4/speakeasy_1.19.4_Linux_arm64.tar.gz"
      sha256 "7365992ef93f8d9eb541599c99b2ecd2f527d1305f94a68efbb8fcea7fe354c5"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.19.4/speakeasy_1.19.4_Linux_x86_64.tar.gz"
      sha256 "bcad07afb01af08aae6a7a11a9e127563e90d083f17a59a3c965e4b49243e05d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
