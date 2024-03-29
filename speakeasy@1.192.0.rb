# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11920 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.192.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.0/speakeasy_darwin_arm64.zip"
      sha256 "37eda44f6340ba841aced279ed224185e102369f27b75455ec23895a1bb1e613"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.0/speakeasy_darwin_amd64.zip"
      sha256 "3fa874be87db8dabb021b883a6d98047f1dd7863a82ef6939717fb3419188655"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.0/speakeasy_linux_arm64.zip"
      sha256 "295b73701f2da097d20837cb6b94d07f63a1d41f441ad711fe99c9289374db3c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.192.0/speakeasy_linux_amd64.zip"
      sha256 "de280114fc287d97b6feaeadc006a6e2b1c2f388a31a8c49efd48eebda56d7bb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
