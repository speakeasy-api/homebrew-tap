# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1501 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.50.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.50.1/speakeasy_darwin_amd64.zip"
      sha256 "71db71a3f27ecfacefd1ada281b3c6ba6f28c9924363393a40ff2b5649c0ace0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.50.1/speakeasy_darwin_arm64.zip"
      sha256 "95670ddba420b6be8a98c4af6869cf5095657ca987366fb36969307b26437777"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.50.1/speakeasy_linux_amd64.zip"
      sha256 "d795f1d80d1f388c717af6740f246c3def8f2eb4b727c1d22e9287e6e7ae3093"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.50.1/speakeasy_linux_arm64.zip"
      sha256 "2b84a205cd0c4c91add3aa7fd87517f95e4925589c3655858d5583633d68ff44"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
