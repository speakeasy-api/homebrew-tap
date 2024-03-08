# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12042 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.204.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.2/speakeasy_darwin_arm64.zip"
      sha256 "3ab2e0297862ad98016da3b1dc207130797f63c03c9636f093dbc765201ad9f6"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.2/speakeasy_darwin_amd64.zip"
      sha256 "b52fd1d3991831193cf39b8eaa53c1e662bac15957eb7e5ae3aab9c04054dd78"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.2/speakeasy_linux_arm64.zip"
      sha256 "3f9c324444e9e02cdbfca9889593fba4917ba80a55ce2c0f7e436fa33d77393f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.204.2/speakeasy_linux_amd64.zip"
      sha256 "a37efd8b6d542891467a8789fd56b4ed6ebfe81c1f8edce608aee2ac077b55e3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
