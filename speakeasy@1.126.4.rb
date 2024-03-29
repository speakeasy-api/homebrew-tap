# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11264 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.126.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.4/speakeasy_darwin_amd64.zip"
      sha256 "fe038ee6f6fb869f3961c6931aa779c9dabfc52b7333864fc85d5ee52c855b61"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.4/speakeasy_darwin_arm64.zip"
      sha256 "0bf4919198c691fe83c78961ce0391dc40be9fa949c076e59dd263d334b17da2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.4/speakeasy_linux_amd64.zip"
      sha256 "139a85c09ac10d8f30c52b0cb6dba3233e913891746d1499d38eff3123e45d75"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.126.4/speakeasy_linux_arm64.zip"
      sha256 "422f77bd9c6c6722faabdf21b229b435c17a8c6fa372174b020b846f25384f94"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
