# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.345.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.345.1/speakeasy_darwin_amd64.zip"
      sha256 "ab3f942d08a603fb206b383068142324b1ed6335be0f7b971d133199aaf4df4d"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.345.1/speakeasy_darwin_arm64.zip"
      sha256 "a9cbbc1461440dc1200af699033747379755a6a432cb2102fa8ae14b696b2523"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.345.1/speakeasy_linux_amd64.zip"
        sha256 "4048bc6d73f4cdaed46d08ebb1683c33535a2c728e268c3afbc73e09da4a985d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.345.1/speakeasy_linux_arm64.zip"
        sha256 "a51c5d076abf01641cf03ce912132cfc047e56d6c16de38a93c37bb6505e1680"

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
