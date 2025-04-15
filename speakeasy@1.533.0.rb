# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15330 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.533.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.533.0/speakeasy_darwin_amd64.zip"
      sha256 "6429e75788a7cb57aa5984b48cf378f10c4443e2aeebd05f19210f9319326fea"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.533.0/speakeasy_darwin_arm64.zip"
      sha256 "84812202448d968bd182207aa81f222b2211e92e29d83df557b13ae69c233489"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.533.0/speakeasy_linux_amd64.zip"
        sha256 "7f523388233aab78217178865e2c30a5dfd9cda020db15dffaae08b98dec21ab"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.533.0/speakeasy_linux_arm64.zip"
        sha256 "958cc6d0b2e9796372da51f96543a888eb8c9f3df0c815171bb5739cc2492a7d"

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
