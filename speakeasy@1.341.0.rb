# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13410 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.341.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.341.0/speakeasy_darwin_amd64.zip"
      sha256 "b472de938b6d5d0afb0bb88f2831620e50df241711cf408e4f9ecc7fa29fcac2"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.341.0/speakeasy_darwin_arm64.zip"
      sha256 "9e53233a1dfc9bb812497f5a88f1535d1d3baaa50ba9771c4a30141c151d1042"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.341.0/speakeasy_linux_amd64.zip"
        sha256 "b8d414be9ff2ccf2356b21b9a65690544e0454a03e0a33bc57dc644df21cc2c9"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.341.0/speakeasy_linux_arm64.zip"
        sha256 "8aae74229185b57e9bbe2be22ce2ec562ee5f65685fd6f3aa95e724f73b857e4"

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