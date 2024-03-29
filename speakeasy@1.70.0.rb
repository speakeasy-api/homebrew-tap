# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1700 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.70.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.70.0/speakeasy_darwin_arm64.zip"
      sha256 "e7f50c2f22832612f1daf3c8bb74983580f1a4a3b17a05b8eb36c1bf1d5b9782"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.70.0/speakeasy_darwin_amd64.zip"
      sha256 "4d84f0c63d6eddc40ee3485a779423b5c58d67628186cc1e8a9e68c518846236"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.70.0/speakeasy_linux_arm64.zip"
      sha256 "5575dc37433ba928c1384cd57515bf1b132fb2673d74bd667b926ef3988a9b45"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.70.0/speakeasy_linux_amd64.zip"
      sha256 "7fdee60c8e757179b0e0f4fb45df9d8fc0c9d5ed9a46b3aaa2089a37d6291bf3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
