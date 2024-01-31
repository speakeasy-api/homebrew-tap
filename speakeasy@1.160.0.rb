# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11600 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.160.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.160.0/speakeasy_darwin_amd64.zip"
      sha256 "85f6fdce810d1ac2dceafb985856b5b77c74e5c4d74e670196bb84aebb5cc87f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.160.0/speakeasy_darwin_arm64.zip"
      sha256 "84eb43e4acab7fad05a33860630d473094730ed34b2f86bc6664582034417d48"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.160.0/speakeasy_linux_amd64.zip"
      sha256 "ced278655c976963a32123f8d44f5dfa55905d94bedb0dff8c17d615922d82a4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.160.0/speakeasy_linux_arm64.zip"
      sha256 "356aad5929f47d0ebd74b75ac57115f517e74f636002487d06663b158d94ff97"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end