# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13890 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.389.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.0/speakeasy_darwin_amd64.zip"
      sha256 "f42207c50d9e5a6cf5583aa016a00f6d230c9cb1a387dde20acd5d19b67c4b74"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.0/speakeasy_darwin_arm64.zip"
      sha256 "30651886b7c198b4c37d32001dddd0ef38dda2d2389be69e2c27b8fe1d170eba"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.0/speakeasy_linux_amd64.zip"
        sha256 "3043b6509e04724c8f72a8f01628b746d67dab334e992c5f9b7fb6d46f03fb56"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.0/speakeasy_linux_arm64.zip"
        sha256 "a10a10fc6d969b5c0d4626b42d13e64b86c8de22caa497c28e526b0ed3b83e34"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
