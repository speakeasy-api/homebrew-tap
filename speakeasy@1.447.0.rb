# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14470 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.447.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.0/speakeasy_darwin_amd64.zip"
      sha256 "a78a2d3c9a359124486c1a52962281cb48477517bd8be5b32c2d240ec1a5f4c3"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.0/speakeasy_darwin_arm64.zip"
      sha256 "6465a4963a6115d8c281b24896566adeedbd75a73022d20d070b1ebc98ecd5f2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.0/speakeasy_linux_amd64.zip"
        sha256 "e06c311a473aa64700647de8db9112774538e029af0b1b5e539b6dbd962305ae"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.0/speakeasy_linux_arm64.zip"
        sha256 "ed297fb00bfb3d06280d0c27f577fcc16bf9ab0e5cac84d30217ae51f1abbdf7"

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
