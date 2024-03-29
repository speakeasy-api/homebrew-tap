# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11100 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.110.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.110.0/speakeasy_darwin_amd64.zip"
      sha256 "dcbed8dbf1bfd60bfe6c16529ec06e875a21df493cf77a8432f7ff9101ca6025"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.110.0/speakeasy_darwin_arm64.zip"
      sha256 "cd5d909020e17253fe68e94f14195433e8e8fbb16e9da5c2902de4f4b605a3ba"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.110.0/speakeasy_linux_arm64.zip"
      sha256 "c001d2abad0405e43d6ac8ef0478a36cc4f2b8d3ab73d345ac91661e6158e727"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.110.0/speakeasy_linux_amd64.zip"
      sha256 "e85f83832f523466fcf7ce415a4cd59aa30a86741d7f64c9ecec37af49b842d9"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
