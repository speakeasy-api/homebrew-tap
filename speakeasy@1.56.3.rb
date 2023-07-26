# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1563 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.56.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.3/speakeasy_darwin_arm64.zip"
      sha256 "5d28739f9a3a443fa1c50a6bf8f3431265fa88a67002f52631ad2ed78d060b7f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.3/speakeasy_darwin_amd64.zip"
      sha256 "4e6f5e159978a9e94aea27844036ab2e24a0f8f53c429ed31e2eef371464001d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.3/speakeasy_linux_arm64.zip"
      sha256 "25de433f3297c21e8147590f88213d2e0fcde8f346b1846f7d34e7a842729119"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.56.3/speakeasy_linux_amd64.zip"
      sha256 "3143561cb7eb0f5afdbd437adcdf723f49315ef7a9419e32ea72de2cab59fd2d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end