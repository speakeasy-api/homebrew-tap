# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11990 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.199.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.199.0/speakeasy_darwin_arm64.zip"
      sha256 "1cc382f8563c1c12595cad5e222ac44871d41223709b7d188dee84c6d83c39e2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.199.0/speakeasy_darwin_amd64.zip"
      sha256 "3f947f48c209a62c1edc68e8de734190c806d4531844134508bac456ff51a56f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.199.0/speakeasy_linux_arm64.zip"
      sha256 "3a6ec13e6d11458730f2e04994d275cc499455b57fdc9761a2ad71bd1d3e6e40"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.199.0/speakeasy_linux_amd64.zip"
      sha256 "64cae14571d5cbc73573f7b3dedc7445e44b684b7567962009c3381c0afa1187"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
