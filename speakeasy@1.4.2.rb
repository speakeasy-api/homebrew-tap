# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT142 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.2/speakeasy_1.4.2_Darwin_x86_64.tar.gz"
      sha256 "f85efa58e40e7ec9bb8f9b0db0a21edeb2834a823597bd4af9157565defa61cd"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.2/speakeasy_1.4.2_Darwin_arm64.tar.gz"
      sha256 "c4c4a74fe367df22e15e7d6921b9944ef126335a59e1191500138b8659057e12"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.2/speakeasy_1.4.2_Linux_x86_64.tar.gz"
      sha256 "17730d3f829b229edeb00d30d8f315dc0f54a75434605bab9dc2c96a193bbe60"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.4.2/speakeasy_1.4.2_Linux_arm64.tar.gz"
      sha256 "0b6fd0147477b50a8dfda8a526db59e3f2b10f3cf181c97a418ea1260c3c28b3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
