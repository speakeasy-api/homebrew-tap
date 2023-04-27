# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.26.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.26.1/speakeasy_1.26.1_Darwin_x86_64.tar.gz"
      sha256 "2e62522bedc7d099d91f2439d0c0947bbb12755503b1af9e4b1d2fd0291de7b8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.26.1/speakeasy_1.26.1_Darwin_arm64.tar.gz"
      sha256 "7dc3bda6bb9568591563c070bfa362e8d14b2817692599e6533bcac5d1ae6371"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.26.1/speakeasy_1.26.1_Linux_x86_64.tar.gz"
      sha256 "b854cdbbe482765f4cf411699c3df3511f664dcfeac6d47cbdfe72a3b7d5807c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.26.1/speakeasy_1.26.1_Linux_arm64.tar.gz"
      sha256 "4234cc81a0f302f3eb08068f0d946217c80a1e62d9b4c9d929e88abf57093b8a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
