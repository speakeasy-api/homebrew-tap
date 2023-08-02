# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1663 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.66.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.3/speakeasy_darwin_amd64.zip"
      sha256 "4803d54915ed062767704a8be33bffb861cb7cdc8cca0e427078296074f93fda"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.3/speakeasy_darwin_arm64.zip"
      sha256 "67be809dbbdb7dd0d7549da782a24bdd8c0e53221bceb56e34e3bff9b4f1445d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.3/speakeasy_linux_arm64.zip"
      sha256 "357a0adefbcff29b6c449715c8326cc8386136da5bbd02b84707ba9750a4a301"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.66.3/speakeasy_linux_amd64.zip"
      sha256 "eac468986da2ad73fed0e6e161070036a122d2f228c58239519cdbad0a277cfc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end