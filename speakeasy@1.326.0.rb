# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13260 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.326.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.326.0/speakeasy_darwin_amd64.zip"
      sha256 "efd7db957a9c616ff6ce05255a9816cb975617193d656987851810e34d41f853"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.326.0/speakeasy_darwin_arm64.zip"
      sha256 "5287cb5790f6f0d20719448684af0878bb0a5fae2fd078248a53fa168bb990b1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.326.0/speakeasy_linux_amd64.zip"
        sha256 "7f3cf2508df05356aa6f70e937fad88ea90c1548a1c80f8b6fe3008f3985ad0f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.326.0/speakeasy_linux_arm64.zip"
        sha256 "9cac2ddaa3f7473e8e4a026c646c6763f1c4b1de264cd5a268717379cca12926"

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
