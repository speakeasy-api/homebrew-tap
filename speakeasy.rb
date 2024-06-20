# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.310.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.1/speakeasy_darwin_amd64.zip"
      sha256 "099aaf1da061521fcae5c4a84a681ad211621ba20d1d479bb55afd7ddc9c4cd2"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.1/speakeasy_darwin_arm64.zip"
      sha256 "41a6ef584318c517c6d5336253ba8903cc38b35f40bfe38d431383f7d48957b2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.1/speakeasy_linux_amd64.zip"
        sha256 "5198804694e38b91e07162b3b649b53a987a8daadd8e941b397eab78a27a5887"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.310.1/speakeasy_linux_arm64.zip"
        sha256 "52d385102c3ec951ce04de2daa02642105f4e169adc9acf142498d5f671e0129"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
