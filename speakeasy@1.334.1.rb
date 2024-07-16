# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13341 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.334.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.334.1/speakeasy_darwin_amd64.zip"
      sha256 "20a7fcbb9f98c50ccced8081eb213401c37a1fa0290e952c048f8535286cc5bf"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.334.1/speakeasy_darwin_arm64.zip"
      sha256 "df0eaf7e2288a6931a4e3e2a9c0d0306dd59edbf2764b5954fcb4eeed7e0f507"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.334.1/speakeasy_linux_amd64.zip"
        sha256 "0b63e68317cf7ee1c0cc6b92083bfaa2f4ff3ba1362f7d539f0e22f2f95f4f84"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.334.1/speakeasy_linux_arm64.zip"
        sha256 "a4cf70d662a69b817c58e5b35619e4407e6a4c2f2134c0b40324740903827fd4"

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