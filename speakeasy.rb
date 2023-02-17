# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.3.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.3.3/speakeasy_1.3.3_Darwin_arm64.tar.gz"
      sha256 "58a78c106bbf81267eb61490505ae524033ac525892ff0c2bd80de09cc45f82a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.3.3/speakeasy_1.3.3_Darwin_x86_64.tar.gz"
      sha256 "bf7d4bf6c9771a14d9f9ec4e5fd5720f7a12d5acc78ae89141175ebd08d6d433"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.3.3/speakeasy_1.3.3_Linux_x86_64.tar.gz"
      sha256 "9ca5ee48d289657a7ff6af770f74077a77fa55abeb548992895bf06e9ea18539"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.3.3/speakeasy_1.3.3_Linux_arm64.tar.gz"
      sha256 "9568879491900d470a0d34fd8dbd31653ab39716354e5ee71e62863f2b67213f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
