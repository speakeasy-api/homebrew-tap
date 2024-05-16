# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.292.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.292.1/speakeasy_darwin_amd64.zip"
      sha256 "c8e6e32f160f40ca73577b67e5932b2c8d0b60b2b43c917f6554fdbe1c7d7d55"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.292.1/speakeasy_darwin_arm64.zip"
      sha256 "f56f49e5b0c0b5227b9417ba1e32264c2c47d2fb3a0357ada9d66ada3e64f62b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.292.1/speakeasy_linux_amd64.zip"
        sha256 "1059220e8c6b41f86feef945c2f99cb776dcb8b4808043ebc0e1f0d48c85d2e9"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.292.1/speakeasy_linux_arm64.zip"
        sha256 "88c768d1114acaa3633d62ed76e62be31e5b24f91f67411defb3ea9eb07c7705"

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
