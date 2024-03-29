# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11200 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.120.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.0/speakeasy_darwin_amd64.zip"
      sha256 "82ace7d0097d4dcd42b0e8dfb96b26b3f7ef450cf829b3070d7abbcf2ba4eaf9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.0/speakeasy_darwin_arm64.zip"
      sha256 "403209e6af4ef1c79328525d186c69cbb97cd252597518153bac5b6600644600"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.0/speakeasy_linux_arm64.zip"
      sha256 "8df085687102b8d781eb023d534c6be47cc86b31b04c6adced66487fbb77b376"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.120.0/speakeasy_linux_amd64.zip"
      sha256 "9f210a2fff1185bf1f3abe26c6895f962fb9b657c1e9cc5a6e12bc780f1babdb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
