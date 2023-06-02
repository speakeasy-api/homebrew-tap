# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.43.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.43.0/speakeasy_darwin_amd64.zip"
      sha256 "e10982f2c69dbed174672b8e48f027c9feeb345ec2aa8e13f1e0757e68ce9149"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.43.0/speakeasy_darwin_arm64.zip"
      sha256 "015b56c68f904b4cab9d7924e8cacb68be09d8cf3188d391d24b94af5824292d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.43.0/speakeasy_linux_amd64.zip"
      sha256 "3a7b026ad3183b06b196dd9f06e62d5b641729468142a3c6cecf79baefc1ae51"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.43.0/speakeasy_linux_arm64.zip"
      sha256 "0462f985901fbcc5a59eb7b47fc7b44b7c3b4cf1c6260e81f9070c7131331d8b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
