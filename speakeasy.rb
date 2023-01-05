# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.17.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.17.3/speakeasy_0.17.3_Darwin_x86_64.tar.gz"
      sha256 "8a088ccca9e7b13bd74f9d862fb40feb923e476e1f8379584e7eade84506679e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.17.3/speakeasy_0.17.3_Darwin_arm64.tar.gz"
      sha256 "825a17b83996487bfebed23f382f860f753d3bcd53dc5773246b99fad044283c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.17.3/speakeasy_0.17.3_Linux_arm64.tar.gz"
      sha256 "6cadbf91df77e33d414a4f95c3b9792ebb1187a6a8c803f2ee06511c42973603"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.17.3/speakeasy_0.17.3_Linux_x86_64.tar.gz"
      sha256 "ad1d3e626dbd55c21a88ea26e349b30becd1152a839bb15eb82e63c967e5f715"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
