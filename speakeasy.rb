# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.269.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.4/speakeasy_darwin_amd64.zip"
      sha256 "b001cd6e178c2bea3fe8aa586fa55c023c4614395b477968f7613aca033e47d7"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.4/speakeasy_darwin_arm64.zip"
      sha256 "87822d768eb5bb1a9cda2c9422f41e6ce83036a209dbff41cef316da36b4ee3c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.4/speakeasy_linux_amd64.zip"
      sha256 "e8d36037c7694e5b9e5dfdb58c234f83520437642289b5e3bc93c22f230d4118"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.269.4/speakeasy_linux_arm64.zip"
      sha256 "14cc410205c00498ddb35afad022e8f129f89a190f584ba8ed8071a224351683"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
