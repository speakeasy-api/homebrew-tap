# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13480 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.348.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.0/speakeasy_darwin_amd64.zip"
      sha256 "3d7303ad0db07938780ccb23f1e9bcda2414620ba58d14e62c031cf9eb1b5c81"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.0/speakeasy_darwin_arm64.zip"
      sha256 "c1a06194b503ef0bb9d936bb7590d3c0d5a842389e0aa5dbd1e8e0225ef217d0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.0/speakeasy_linux_amd64.zip"
        sha256 "1c3d5dd6f4d16cbc38bbb9dbda8cfa1541e8a742c3ff2e22f4c1ee2d72853b4a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.348.0/speakeasy_linux_arm64.zip"
        sha256 "36206629f1e06a7c3b9e39ded8d0ed1f1cb4d7bd705ebfcfcb6356522c970b73"

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