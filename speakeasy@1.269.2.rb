# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12692 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.269.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.2/speakeasy_darwin_amd64.zip"
      sha256 "af12e7b0e2cbc6b6217c08147cd8ec4fdaa3a8005181b35810883036d3b8e2db"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.2/speakeasy_darwin_arm64.zip"
      sha256 "c06ea3528c0bc2be71989ebd555380404846d7262bffa38124c4d908dc05e801"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.2/speakeasy_linux_amd64.zip"
      sha256 "bec6b5c0d5ec6c4ab6277e226ceac9ef5046a04de0a9d5c83f4461546f33ed73"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.2/speakeasy_linux_arm64.zip"
      sha256 "1820a9016014851909ebfad45abe273fae290518066ad3866d34fb58c8a68a70"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
