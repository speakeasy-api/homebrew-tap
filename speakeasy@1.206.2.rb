# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12062 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.206.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.2/speakeasy_darwin_arm64.zip"
      sha256 "865cc0ab20b6c162b2938b65881cdfd7c75e55ecb0f16c94b78e37b2a62edeee"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.2/speakeasy_darwin_amd64.zip"
      sha256 "094d6513d500be5f214ef3e5a0e0757b2c77d09e96c48eac855b7031e5e0b8d8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.2/speakeasy_linux_arm64.zip"
      sha256 "f1564a3e6d4b1afb75fed0934bb76346ad25db28d57f27a80b54cfe742e27c9c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.206.2/speakeasy_linux_amd64.zip"
      sha256 "44cb088dc708006638d0c0153f9bdfb28c8687c72d39473e8ab6525d3e5db946"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
