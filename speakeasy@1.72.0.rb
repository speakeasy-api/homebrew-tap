# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1720 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.72.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.72.0/speakeasy_darwin_arm64.zip"
      sha256 "6919e8c784933c3411c3775ea2b3ca99895769ec09ddd2cbf3cb64fcfbf0a89a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.72.0/speakeasy_darwin_amd64.zip"
      sha256 "97486b090b64b5a45687a0adbb33eeca1e4ee330bf06084dcf39eb755ba83ca5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.72.0/speakeasy_linux_arm64.zip"
      sha256 "11a8624125ceb1f94b4fc005a144639c506565765e24fb2495931239db0796b2"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.72.0/speakeasy_linux_amd64.zip"
      sha256 "f8db2d1e229c4d1f5da76476ba2ac7fd251c1eb8361071aafcb4080c7267c247"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end