# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1882 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.88.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.2/speakeasy_darwin_arm64.zip"
      sha256 "d6f41a47528abaef0df9f229bbb2b21286bafabdcc56e2e0a2532b55a7cff547"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.2/speakeasy_darwin_amd64.zip"
      sha256 "7463f18944bc83ac546b8f95b1694077045eb7853108550a03b11be807e11ff7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.2/speakeasy_linux_arm64.zip"
      sha256 "591e52e9c0c73a8c3350a1db992cf629bcde66b3b8bbddbb31c655f44bb72cf9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.88.2/speakeasy_linux_amd64.zip"
      sha256 "25b1effe13c3b985908679f329a8df2bf2b9d409735db1a73571ba9424782b60"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
