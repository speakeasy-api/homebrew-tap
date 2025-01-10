# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14680 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.468.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.0/speakeasy_darwin_amd64.zip"
      sha256 "cb2b2ab90bc1a0c0616403f91705bbd73f8d053b3dec4d64640a5deb091babe6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.0/speakeasy_darwin_arm64.zip"
      sha256 "8c740549bb33ef66d708cf7fefee4cd984da2d158fcca14a05d17b68978edfb7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.0/speakeasy_linux_amd64.zip"
        sha256 "28ac913a3cadd16f9c0a9497b33d54369eda9a7e9f8344dba2bb67b04a7797e3"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.0/speakeasy_linux_arm64.zip"
        sha256 "fe650cfdd1296bce920b489a638b64a199368b080bab228f7e02eeea8178bc43"

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
