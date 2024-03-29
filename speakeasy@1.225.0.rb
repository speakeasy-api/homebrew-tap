# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12250 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.225.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.225.0/speakeasy_darwin_arm64.zip"
      sha256 "cfbc6047e3e417f53912c7f4b4f6eab877b24b0e49277e440e5c84e5a9be7428"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.225.0/speakeasy_darwin_amd64.zip"
      sha256 "db14d90238cdffae921c6fc24d90acf350fcd23f5e20e73d77cb30c9a6e2f69d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.225.0/speakeasy_linux_arm64.zip"
      sha256 "758117d167f38eab4a9eed422c66de37703edfbfd8585d09937825c3365923a2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.225.0/speakeasy_linux_amd64.zip"
      sha256 "9ebfe32fe611fdde41556238606fd7f2a7b8d93e5da2fc153ddcc075d43d7075"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
