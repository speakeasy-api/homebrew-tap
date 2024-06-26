# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13032 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.303.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.2/speakeasy_darwin_amd64.zip"
      sha256 "6c5722b9b4522b583692e8a14fe3df72f88809ae68220e1073b60596a377cbe7"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.2/speakeasy_darwin_arm64.zip"
      sha256 "48a57e917404725c3ee7e108993e04fe293045ca5d9662afc13a21f01d2d25d4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.2/speakeasy_linux_amd64.zip"
        sha256 "729cf9b01f7a65368ff4add2599e77237c212c832dffbc84641628f0bac74e72"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.2/speakeasy_linux_arm64.zip"
        sha256 "6ab35b3b915d5c345ba6d18ae68dfe88ee9d89e2db37a3456204ffcf7e6d48e0"

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
