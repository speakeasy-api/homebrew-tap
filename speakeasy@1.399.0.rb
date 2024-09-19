# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13990 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.399.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.0/speakeasy_darwin_amd64.zip"
      sha256 "209a77af0435326b8cd7fcc5ddc24a6cc87e4b7037ba8d8b89feae948218739b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.0/speakeasy_darwin_arm64.zip"
      sha256 "a65a013de2105b208904e2430609688b6a9b898ea7bc645f9b167eb9f432c3f6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.0/speakeasy_linux_amd64.zip"
        sha256 "d9c7a5f5960e06481c402d11295d167b7fb83a5d7988af4a82b4bc831e5f4048"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.0/speakeasy_linux_arm64.zip"
        sha256 "89b0582e6dc52e50a9a969f8b9ee1473fd83b0495993f7bcf89442768d4facd0"

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