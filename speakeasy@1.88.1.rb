# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1881 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.88.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.1/speakeasy_darwin_amd64.zip"
      sha256 "ca2853aed84d0fd5856fafc76482853b106fbff03dc94c778b994a2a87b7171e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.1/speakeasy_darwin_arm64.zip"
      sha256 "148f193e8d9bfec0ce277f2505f8394f341d94cd1f66dec19e429347405f6115"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.1/speakeasy_linux_arm64.zip"
      sha256 "08741041c665e784dd52e246a8344bcc805493bfd347eb5fe514d8b082506079"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.1/speakeasy_linux_amd64.zip"
      sha256 "c07363046c95bcc39dd2102d3affd84ca5a21747b3550d505c5734216d1b7e30"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
