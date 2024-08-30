# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13850 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.385.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.385.0/speakeasy_darwin_amd64.zip"
      sha256 "203492b377ae4f337f5a53b2a8689d4df718a895290d6a2f0aa9ef4eef3104dd"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.385.0/speakeasy_darwin_arm64.zip"
      sha256 "922336ce2bdaff6a0c63c75722f7d326865dc29e0f15eed5d359590c719bf23f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.385.0/speakeasy_linux_amd64.zip"
        sha256 "057b6009d0f73e164785048ff6d5e7e5873eddae56c95ed49dfc73b29eeaaa28"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.385.0/speakeasy_linux_arm64.zip"
        sha256 "c9a24f3e6fb13c74731523dd265b0b709408da0e0ab61066bc9c7bddc4dd8c9f"

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
