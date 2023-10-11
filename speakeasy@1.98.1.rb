# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1981 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.98.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.98.1/speakeasy_darwin_arm64.zip"
      sha256 "31afcde323c7d587d66f74b11dfc02869bdf64010761b4602920209ff0addfa2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.98.1/speakeasy_darwin_amd64.zip"
      sha256 "4c425f5f92811cfb24efec844d17b0a7e5af063de221f511296f1e15ec059151"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.98.1/speakeasy_linux_arm64.zip"
      sha256 "8ad5398eb00fa40be2392e2a206e071e73b914cb51877d13f48c0eb1bc10b096"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.98.1/speakeasy_linux_amd64.zip"
      sha256 "09016d1ce9c3f29ac96a1812760ea790a1a107022229a2db7f6dbb27ab0f5068"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
