# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11243 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.124.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.124.3/speakeasy_darwin_arm64.zip"
      sha256 "4870e5c7dcc4c8812a1e5bfd230d95905282d13bd28e7e607b8b13b022566d3c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.124.3/speakeasy_darwin_amd64.zip"
      sha256 "33529302fa7e5c77b29e7ddbc9358451f82033d618ad093a028e915f1dc38e9a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.124.3/speakeasy_linux_amd64.zip"
      sha256 "fd2d16f0ba7fcc1ff0cd39b33fd841b417efb7a9d79debc6b12cf00fba66465f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.124.3/speakeasy_linux_arm64.zip"
      sha256 "db91ba8a8696de0bc7f5b0db9eabe38a416572353614f91e150f8a1d4cdf880e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
