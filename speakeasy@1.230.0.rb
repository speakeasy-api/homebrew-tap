# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12300 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.230.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.230.0/speakeasy_darwin_arm64.zip"
      sha256 "e35e699916f00dcf84e32633a6e0bca6d7e23b5b138d4990a41eae7afb62a32c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.230.0/speakeasy_darwin_amd64.zip"
      sha256 "ec542d3e38ed6b9fb45e96dee6bc8559b410d0e53fd19f27756bb3023b8a2e20"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.230.0/speakeasy_linux_arm64.zip"
      sha256 "a8e1c3dccd556254c67f4d797efd8f0c13020abefe841f84b5ba3c895779e67d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.230.0/speakeasy_linux_amd64.zip"
      sha256 "97a0026dd8ed358731fc74e4814e7a997fa87e871e48f3832c703b2a2ceaacae"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end