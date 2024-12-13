# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.455.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.1/speakeasy_darwin_amd64.zip"
      sha256 "4f7ff88e719a9ded6e2acb5de1bd6a96c651fc88a6db724b4f4c8865687d001f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.1/speakeasy_darwin_arm64.zip"
      sha256 "b3189ba3947d289e5d023adc9794e8bf0c5a823a3d5e6f3bc7fbf0dbac815aa1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.1/speakeasy_linux_amd64.zip"
        sha256 "deb83a1484eb47673130344584827c92bf134d7f0c0e983b857a0bedbb48c997"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.455.1/speakeasy_linux_arm64.zip"
        sha256 "1c055cd1dba9686177e1d162c8f0086e15b2358ce4ca392811d78f1d2c6e0a1f"

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
