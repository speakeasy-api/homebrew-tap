# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.154.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.154.0/speakeasy_darwin_arm64.zip"
      sha256 "05878a7dd8fc77346e44240b6c18f62c2b2020a5ded9631728bd93bc96de9fd0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.154.0/speakeasy_darwin_amd64.zip"
      sha256 "12a831a7f65d0a4886c39c3d363833a1a408600fec0310069b2ccb7185a4fc5b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.154.0/speakeasy_linux_arm64.zip"
      sha256 "8bc2173eb1b4b5e30591fa5bc707912b1da65294745113f38c484efe9472b2d0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.154.0/speakeasy_linux_amd64.zip"
      sha256 "5d0d7b6dc34c7c4d9f9dd0ebae2c7c285d7278e53001c118218d0a57e39a8b41"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
