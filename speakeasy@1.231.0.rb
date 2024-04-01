# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12310 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.231.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.231.0/speakeasy_darwin_arm64.zip"
      sha256 "1f181fae00f5de8964409ee197d9a22b66b893c38163b395e6ccb902cd3922f3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.231.0/speakeasy_darwin_amd64.zip"
      sha256 "61064d001e6e372a8829b03baa808ab4919e03662255767a7b24b5d1100c6e1c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.231.0/speakeasy_linux_arm64.zip"
      sha256 "d9a870166968809d8ce50191235a04c012c4982a627358f4410c900441d01140"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.231.0/speakeasy_linux_amd64.zip"
      sha256 "e559f92a79c9733988b112b9167842a4644ae7f03bc8e8ab7eb82b46eb2c9c53"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
