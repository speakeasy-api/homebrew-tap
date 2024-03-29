# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12220 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.222.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.222.0/speakeasy_darwin_arm64.zip"
      sha256 "235f5dad5543e7bce489bff715cb61efe6e1026dea083e67d2f28392b8c319f2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.222.0/speakeasy_darwin_amd64.zip"
      sha256 "5c161cbb37889ccfadc60c077cdb220884aba2c989b4abceee7528bce8562fb2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.222.0/speakeasy_linux_arm64.zip"
      sha256 "20c5e6e00e00d92d38918fcc5ef639d2f405758e337ea8c5fd226a4a049144d3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.222.0/speakeasy_linux_amd64.zip"
      sha256 "c43736e511467fe13b20705c95407bb8d55b4b98bdfe9666f4d8f3d221b2bf06"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
