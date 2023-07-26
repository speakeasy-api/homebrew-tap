# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1641 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.64.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.1/speakeasy_darwin_amd64.zip"
      sha256 "e1dcb578ad555b61b6fe9c4e1b869431763176f0aa1c63c9713f48da05e6c4fa"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.1/speakeasy_darwin_arm64.zip"
      sha256 "404684b3ede5b2f4fa0522c94b34e6009104d56d8f29ad2a563a9457e664610f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.1/speakeasy_linux_arm64.zip"
      sha256 "911af5a012ba0e7c7565716861996e5e5de5dd110d7ddac3bb047a0e4ddbb81a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.1/speakeasy_linux_amd64.zip"
      sha256 "82802dedc29f16abc559f9f84957aeb6969848804967ec870fed555ff72fdb9f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end