# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14011 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.401.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.1/speakeasy_darwin_amd64.zip"
      sha256 "031e79b38bfd947994577633dc7e9d9e4a21d54aed5cbec232d71fd4c23606c4"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.1/speakeasy_darwin_arm64.zip"
      sha256 "74eb6e4ac0066b378d82e2423e0db360829c5fec3eb3e9b9f929fd414caa35fd"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.1/speakeasy_linux_amd64.zip"
        sha256 "e6fa73a5e24defe445d1efb4cab1e6c86fd5352b42e7e39c20cde73ea2192d1b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.401.1/speakeasy_linux_arm64.zip"
        sha256 "5d610b78b43a62448e546da5f9c1a27b1e2af53ff357e7fea02c171703847636"

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
