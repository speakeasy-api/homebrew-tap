# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.66.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.1/speakeasy_darwin_arm64.zip"
      sha256 "f04d14bfe51e09672509e0d2852c6790c3427b293972f80b3cc362b3894af53b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.1/speakeasy_darwin_amd64.zip"
      sha256 "b522ec79288589ed08fa366203578d19eccfc4d64ca9f5a8b45f03863ea92b53"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.1/speakeasy_linux_arm64.zip"
      sha256 "950043c7bb2f972cb03c79f549a6666f43a82b478a119a1794b6eeb248b21109"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.1/speakeasy_linux_amd64.zip"
      sha256 "565de090a6e2daab43199f0d3e81c5ea948361c7fd79378aecaac6c706d748b7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
