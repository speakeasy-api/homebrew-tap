# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11930 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.193.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.0/speakeasy_darwin_arm64.zip"
      sha256 "d1ed0266110cd5d661f16b393ffa9e69d74d498a03f5083a8bf2704e9ad8359c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.0/speakeasy_darwin_amd64.zip"
      sha256 "4c926584380fbf0a72448c4ff814f54e58bd13acafc9bca278103e20d463d5a3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.0/speakeasy_linux_arm64.zip"
      sha256 "5fa1a98f1919c1a0f2b8137fa457605e997eb0ac78690b41bba338edd60a57c1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.193.0/speakeasy_linux_amd64.zip"
      sha256 "87bd0164deeb63fa9ffe651156e31ff367451bc5cc1137ebc36c71bbc5049be0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end