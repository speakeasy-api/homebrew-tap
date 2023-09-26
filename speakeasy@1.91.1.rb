# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1911 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.91.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.1/speakeasy_darwin_arm64.zip"
      sha256 "b3cb59121281e73021eb84bdb4f01ab618800920cd7c0e7a3774632629619d48"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.1/speakeasy_darwin_amd64.zip"
      sha256 "5ad2b4b5e1f77e8e923d7543ad318928daf61e7854d98f0a54de44872a85c790"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.1/speakeasy_linux_arm64.zip"
      sha256 "f26c840068729b02ba395faaefb5bbdb3e7da690a8c36fabb53facad765d9da8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.91.1/speakeasy_linux_amd64.zip"
      sha256 "2b7adcd204ef85c9f8618b0436e0cc04cb2a339da37e38bbbad26db281a70fd0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end