# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12332 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.233.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.233.2/speakeasy_darwin_arm64.zip"
      sha256 "bc217831352f1e7d81125a00a5cef1c2ed845e71d027c677b6da984d321ce8c2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.233.2/speakeasy_darwin_amd64.zip"
      sha256 "4d8054d93f262737883e31aa2760896699f9210cb09e05b58141f6d9926272e6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.233.2/speakeasy_linux_arm64.zip"
      sha256 "cd07b1794ad2628197bc5814f0aef4930bfc5339aec704dd68848f0859d47d48"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.233.2/speakeasy_linux_amd64.zip"
      sha256 "77330435e3d28527f9322ef034ce47f653f63a83ec67228d509367576fb3b3e9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
