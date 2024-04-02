# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12320 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.232.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.0/speakeasy_darwin_arm64.zip"
      sha256 "15fb54127f0d49c66d2f5d6f92f1dcf44396973b2bcbec6605f29d47ca47b1c3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.0/speakeasy_darwin_amd64.zip"
      sha256 "473cb8120e51564bfdec30c5e2cdd3881af3196142190172f9b786093d3d1447"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.0/speakeasy_linux_arm64.zip"
      sha256 "d9ab418ac298ae6927908069d8981e3b353d56c79eaf8f03aa7e3b98cfdec083"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.232.0/speakeasy_linux_amd64.zip"
      sha256 "031512413a1fec987ef91c119552dea86c121562c0e050c6f12152bf8769766a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
