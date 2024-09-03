# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.389.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.1/speakeasy_darwin_amd64.zip"
      sha256 "df15b16d6d4881c3e64337fb0573f513422c23d864e58c8839925869604498a8"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.1/speakeasy_darwin_arm64.zip"
      sha256 "a2fdc2a2043a8b52f380effeab330f8231d403618c5546f33479ac31c29072b3"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.1/speakeasy_linux_amd64.zip"
        sha256 "4c242bfc246190c98793ce62a2163accf42f6175b9aaaa747d720d0a10423715"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.389.1/speakeasy_linux_arm64.zip"
        sha256 "180ddbd498bdf351651faa216916738de377b5b556acdf910ca413ed05dc94ca"

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
