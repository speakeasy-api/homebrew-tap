# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13462 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.346.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.2/speakeasy_darwin_amd64.zip"
      sha256 "1874f6d5779e582c571e3efc4c962ac8874a14734ca9a69de595c3bc8670bb8b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.2/speakeasy_darwin_arm64.zip"
      sha256 "a223a5ad6870005f8c75ff39811e2509d3baa7eb49cd4987301135d5754bc859"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.2/speakeasy_linux_amd64.zip"
        sha256 "e66ff7e3899c2e65655522e23e8ea4236d5cc2c461fd235b5b74c390d4eadf2d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.346.2/speakeasy_linux_arm64.zip"
        sha256 "147783264bb5408b6ed8f0c2233566e9e7f96baedbcedfed8f5d3bf319e560d1"

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
