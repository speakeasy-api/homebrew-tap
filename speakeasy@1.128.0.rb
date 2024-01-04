# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11280 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.128.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.128.0/speakeasy_darwin_arm64.zip"
      sha256 "3ee82990897e47817d5bc1eb4cc52ac29ea45a7e6f09a54cb156b0f9f7589678"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.128.0/speakeasy_darwin_amd64.zip"
      sha256 "767dd45fd267f27e8995220f1a81caef4ee44e1428b04fdabff1c02cb86708d3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.128.0/speakeasy_linux_amd64.zip"
      sha256 "b0b4291246755577830864ced7db4b1901abd843c0c6ad7995ce5c2866a68121"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.128.0/speakeasy_linux_arm64.zip"
      sha256 "d62736bcba9af48415b3519ee27846abdb9bf699b9da4ecf1cf213cec4ed117f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end