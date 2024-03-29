# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1451 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.45.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.45.1/speakeasy_darwin_amd64.zip"
      sha256 "8eb31393814f9fc2a2e278001a069b10ecadbd462134f9462d5ee3a96584f514"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.45.1/speakeasy_darwin_arm64.zip"
      sha256 "eb789faef9d97f2840092e0e9330b19697f45721c2976629ec29147610f6e68f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.45.1/speakeasy_linux_arm64.zip"
      sha256 "25d3d540b863db6e1eaf0018a5dab00c65d84fcdbdeecec53f910b802bb60638"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.45.1/speakeasy_linux_amd64.zip"
      sha256 "eed81516c3ed4888ef9997fa40544ca7fc8d2aa09185bfc51892ae7381883a09"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
