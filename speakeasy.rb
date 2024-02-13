# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.178.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.178.1/speakeasy_darwin_arm64.zip"
      sha256 "98b745ca355728d20e87a78356d4dd4cd764060b54222755321626ad2898b9aa"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.178.1/speakeasy_darwin_amd64.zip"
      sha256 "11f72ae2ab28023b405f9836062d659c5f622f0d8dd281da43d321932b97fb35"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.178.1/speakeasy_linux_arm64.zip"
      sha256 "499e359970a4960fb7ebc0e60be119c46aa1b79dedd86e1b03b8b09b18f08ceb"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.178.1/speakeasy_linux_amd64.zip"
      sha256 "d76b3715b8bd63ed3f2d0eb278eac83951cdab635d63419fecaacac33e518623"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
