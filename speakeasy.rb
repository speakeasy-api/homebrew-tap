# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "0.20.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.2/speakeasy_0.20.2_Darwin_x86_64.tar.gz"
      sha256 "67fa39f2bd842d66cc3e50cc7ed248f9e40b9b19d85d1a8ba24187fa7ab6d50f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.2/speakeasy_0.20.2_Darwin_arm64.tar.gz"
      sha256 "b1d2aad2a663d2f892be701d7eec4e8d4160eba7bbbf5829666c49868eec61fe"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.2/speakeasy_0.20.2_Linux_x86_64.tar.gz"
      sha256 "a29dae2308e81b776822a5115f3d9a6b585e8a8c2d1788c01fdae6717d238576"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v0.20.2/speakeasy_0.20.2_Linux_arm64.tar.gz"
      sha256 "24e604e93258273e131e20eb23aeb084aadaed171df7078f69de5234af428bd9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
