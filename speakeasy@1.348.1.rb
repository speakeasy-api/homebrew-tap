# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13481 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.348.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.1/speakeasy_darwin_amd64.zip"
      sha256 "23c7088d3df46d64972d22d05a95caf1f61d284f843d2915ceaf83fab8053e23"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.1/speakeasy_darwin_arm64.zip"
      sha256 "44c2e2fc4bfdef8d61f17de756352c3a0e8359a761a0755a517da53790ccc792"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.1/speakeasy_linux_amd64.zip"
        sha256 "dafd916fefe455515bac32ce7a84c3a04512b8da6f137166ee3faf05915efa59"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.1/speakeasy_linux_arm64.zip"
        sha256 "ff6e5aa259f55a9d12d81ba86755589a77c8b5fdf88a9b81e6664fa0e0533c75"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
