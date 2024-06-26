# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13210 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.321.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.321.0/speakeasy_darwin_amd64.zip"
      sha256 "9d92f39c02b410c195999d759c34947c9f8e09f5066f1c62898be5b5a16c3471"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.321.0/speakeasy_darwin_arm64.zip"
      sha256 "96ae5d9425ac43ce69ea967a296b3d50406450e20eb165e08014cd396b033500"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.321.0/speakeasy_linux_amd64.zip"
        sha256 "9bd06f1b3bdf6b4ec360eaeab15a09bb5989c7dd7e4b82397285a8e258ed7f05"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.321.0/speakeasy_linux_arm64.zip"
        sha256 "c9f8f215d1afd85d8a7edbe3ba1c52c2c0d059e0f0b60abfc180538febb4ce53"

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
