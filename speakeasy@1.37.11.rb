# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13711 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.37.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.11/speakeasy_darwin_arm64.zip"
      sha256 "1719ef05e1251b11c424b9260107065aa01e0275f5e25974a900d31c6bae4401"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.11/speakeasy_darwin_amd64.zip"
      sha256 "4d04eb8c577c913958ba4fd7b88acad6158072b5d2490dcd7ec7e71adde5e41a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.11/speakeasy_linux_arm64.zip"
      sha256 "4b63e30acd0fd67805d11c3fd9f9fbfc04d4dccb5d986d56b047a60ceb91c299"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.37.11/speakeasy_linux_amd64.zip"
      sha256 "04badec1b66db9dea32c6a7636522f4f6c3e9f1ee7baf593fe38ccffbcc92509"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
