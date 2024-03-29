# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1330 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.33.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.33.0/speakeasy_1.33.0_Darwin_x86_64.tar.gz"
      sha256 "6ef18a0c25e20a4e9c5dea53c7510cb29ee6c6b4b55a01a1904b1d3811ae4561"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.33.0/speakeasy_1.33.0_Darwin_arm64.tar.gz"
      sha256 "8cb640758a9d59e325efebe002bd78c6e77410c692b412f0921667ce50abe34a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.33.0/speakeasy_1.33.0_Linux_arm64.tar.gz"
      sha256 "cb6158b57fcdd82c0acc66821d77f998d34f2481ac5d23c463777492cbeed8a8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.33.0/speakeasy_1.33.0_Linux_x86_64.tar.gz"
      sha256 "0c29a48fdfc93e93d373a35f28174f9c6367c23511291c9490b0391e144c446e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
