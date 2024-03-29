# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT151 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.5.1/speakeasy_1.5.1_Darwin_arm64.tar.gz"
      sha256 "79fd103fa5adc3b5e6b8622459e871c47010dadbd92e22e59b74886c6ce0a3a2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.5.1/speakeasy_1.5.1_Darwin_x86_64.tar.gz"
      sha256 "75de1b6c87162535da0b423a0a9f4cc4b16894f36c6d7cb199059e6ace509043"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.5.1/speakeasy_1.5.1_Linux_x86_64.tar.gz"
      sha256 "e2459bad7c38abdc2d7a6bde3f1a6bbf8bd3f5097b4c1cfbe445e3bd346c1cb7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.5.1/speakeasy_1.5.1_Linux_arm64.tar.gz"
      sha256 "661a581107b44f2de04a8edad7f89efaffac65e0bd3ce64f66183f4412d932c0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
