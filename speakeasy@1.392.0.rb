# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13920 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.392.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.392.0/speakeasy_darwin_amd64.zip"
      sha256 "16894b7b7add06a6959ab4999025e8434e87046bfde2bee986ea3227298c7046"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.392.0/speakeasy_darwin_arm64.zip"
      sha256 "d7ef5a30fb098599301bb9c5a508f5c15e1625aa8b984dc698a1573d244f3793"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.392.0/speakeasy_linux_amd64.zip"
        sha256 "3e79729463ae668d2c3afce165b0adfbd303055808f256e6fdf3a1b1f4bc9291"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.392.0/speakeasy_linux_arm64.zip"
        sha256 "2793d1bb07562dd521d2ea40d451e10bc96970a9a36dec8be91c044cc57a1f76"

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
