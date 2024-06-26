# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12862 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.286.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.2/speakeasy_darwin_amd64.zip"
      sha256 "82f5e3243a3bc84cde904d1e3c3ecb56fb64a0da873a68e5106eb7e36a0b2890"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.2/speakeasy_darwin_arm64.zip"
      sha256 "3f4243e5e641f0a5d50815e065e0fd6091856341e5171c07be2fafa71ff6074f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.2/speakeasy_linux_amd64.zip"
        sha256 "7116a975b54c1e38ed8560e46ca28e441ae7ccdf07b71eccf2fd36d7a472994a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.286.2/speakeasy_linux_arm64.zip"
        sha256 "b742c8f54f8ef934090f5b73bc9ba5608fbeccb60cf604686fc2012c9809b0ae"

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
