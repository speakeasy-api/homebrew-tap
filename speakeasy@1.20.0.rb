# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1200 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.0/speakeasy_1.20.0_Darwin_x86_64.tar.gz"
      sha256 "ff2821904d06c4982face011531181bee60af5ef67969ffb008f2b4df8fcd5a7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.0/speakeasy_1.20.0_Darwin_arm64.tar.gz"
      sha256 "2703bbcab3756f55bfdfa5f9b9c053e39c4c06af51cc7aecada91f2a1d151a44"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.0/speakeasy_1.20.0_Linux_x86_64.tar.gz"
      sha256 "a194b1447082f1240a1a68d331c438f5ae3fdd2d702b6e1c49386d1d179509dc"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.20.0/speakeasy_1.20.0_Linux_arm64.tar.gz"
      sha256 "39a733b691c3f6eb7a6677d940889ced4a5ba11468d2801c0fe5d32f95dad8d3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
