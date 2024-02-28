# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11941 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.194.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.194.1/speakeasy_darwin_arm64.zip"
      sha256 "ef01fc796cd5097d01d786b8a3d8d619dbc3fe9e181d1027a7c4d40d5f732a5f"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.194.1/speakeasy_darwin_amd64.zip"
      sha256 "59e85846e06cf10902a8db519fcb9a238628b76b880bfe2ceb6e7b87f6aa4262"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.194.1/speakeasy_linux_arm64.zip"
      sha256 "258cc47be00f4e60c77ccd0b29bdaff84ffb51be773a36e3f41fb8706cf98d09"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.194.1/speakeasy_linux_amd64.zip"
      sha256 "116887eb41c0bb6bebbf4178a0d9e6023181c94ec0845237afa2682d9dfaee1b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end