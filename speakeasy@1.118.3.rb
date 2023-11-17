# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11183 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.118.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.3/speakeasy_darwin_arm64.zip"
      sha256 "83f8f31806d00dc80940187885973f3cd3830bdb55680b896e68bb9529d6da76"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.3/speakeasy_darwin_amd64.zip"
      sha256 "27dd4dd5b3a6cf6d4bacbacf91f39056ec793ec972c0341d16b5be8f987a1f12"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.3/speakeasy_linux_arm64.zip"
      sha256 "d3ef9b4fcad0d85e17a73f5d46e52fa57c0f6fb81a38782cd47bce5db80b7161"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.118.3/speakeasy_linux_amd64.zip"
      sha256 "9972a4531d13fe51ba4066b51be4b03df9d76ed991fa938535496ffcb419d28b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end