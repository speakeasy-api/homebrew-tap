# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.419.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.419.0/speakeasy_darwin_amd64.zip"
      sha256 "5e693a5a37430df2802b2bad797ae98246162c789cf039dbc1c340c028f70842"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.419.0/speakeasy_darwin_arm64.zip"
      sha256 "e8d6b372d68279d0c3dadf0a669995d0120446aa5850513b77e9863d432b8406"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.419.0/speakeasy_linux_amd64.zip"
        sha256 "47ef402b52767e2e7f765d1ff5952482479aba734694a2a15f43e49fc53f328f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.419.0/speakeasy_linux_arm64.zip"
        sha256 "06a6b404f698e5d01e5c046ef73263009631c7f94ba9e810f901d25375126414"

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
