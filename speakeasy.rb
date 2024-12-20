# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.458.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.458.0/speakeasy_darwin_amd64.zip"
      sha256 "131feb37b622c3c549c16968919ca99250a087d5769d74f040deacbff7d0e430"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.458.0/speakeasy_darwin_arm64.zip"
      sha256 "e3205a51ee792287170badc200486adddb51243a8f0b04cb7bb42322c9b7c287"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.458.0/speakeasy_linux_amd64.zip"
        sha256 "794142ec022ba3bb8e7de388dbde0af2eaba9972550797bf278bb6bd24c4b28f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.458.0/speakeasy_linux_arm64.zip"
        sha256 "7be2901f9c068ebeb1d1d108b24ba13e15d49d348cc45e15fc6c008a6500b4a2"

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
