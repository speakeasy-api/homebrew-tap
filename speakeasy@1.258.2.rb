# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12582 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.258.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.258.2/speakeasy_darwin_amd64.zip"
      sha256 "23e427c935e4312c71eebcc008a697d3fc0460b212da418d9a9aa4ae2adf4c34"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.258.2/speakeasy_darwin_arm64.zip"
      sha256 "7034092d8d15580dec5dc5fff0f5a535424967312210b48adf0af149f4ac534a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.258.2/speakeasy_linux_amd64.zip"
      sha256 "287395bf62b4637a15046ef067cb6efe88d4591b6d713e114eab69c2c4954a73"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.258.2/speakeasy_linux_arm64.zip"
      sha256 "a47ee9f4c65c23a8eca3aca5dc082bfd4997acc4bc7779e0b979b2957de0d754"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
