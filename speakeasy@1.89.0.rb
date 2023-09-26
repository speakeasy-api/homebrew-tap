# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1890 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.89.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.89.0/speakeasy_darwin_amd64.zip"
      sha256 "6bd8434f2a025aeef20b78916bb4222435ed1d6f298ef6c23467cae3b8212f95"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.89.0/speakeasy_darwin_arm64.zip"
      sha256 "4e42facb4e1f9b8e2aa61be419f8d176b584eca23dae7bfd82ac747aeab9e369"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.89.0/speakeasy_linux_arm64.zip"
      sha256 "337329caf05c42ccdc8a56fb6c83ce764c1ec31d8782c76fc4ef1b0dcd9996fe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.89.0/speakeasy_linux_amd64.zip"
      sha256 "6912d1baf00b57133dd4ea045cd50f82979e2e1bcfea7f0431071e381fb98858"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end