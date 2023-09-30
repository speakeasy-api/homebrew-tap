# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1922 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.92.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.92.2/speakeasy_darwin_amd64.zip"
      sha256 "cc2f57e12fb20ec909b3db7faf3d1ef4331906c56d49e9333713b814c41f1985"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.92.2/speakeasy_darwin_arm64.zip"
      sha256 "bd4252c64a2a014972278e3ac781fa04c950c10dd8670b91be0805d85e986a3c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.92.2/speakeasy_linux_arm64.zip"
      sha256 "01d367081761b628ce3fdb6fff0453131c75774aa1327377419f4a3d2d635c63"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.92.2/speakeasy_linux_amd64.zip"
      sha256 "ac3d48e898770fe29f3d6ec810f553086b83b267ae502c200c1269f0af63a7a6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
