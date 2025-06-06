# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14520 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.452.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.0/speakeasy_darwin_amd64.zip"
      sha256 "1e93ee4fef01ebbaf179797e9d81e9040b462cbe46f332ea234c91f681909d20"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.0/speakeasy_darwin_arm64.zip"
      sha256 "f0611c8330eaa665755a3aae7b332ec8ee603463dd8ebf3ebc4603641a9cc30e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.0/speakeasy_linux_amd64.zip"
        sha256 "fd5aa50b3483e6a60f016ac7f1eeb35eaa8ce7538dd798d9d8aeeaad55f0ea53"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.0/speakeasy_linux_arm64.zip"
        sha256 "39f72ed865855384f807d1b64fc522ded30a08ee66c32008b873391c23972d08"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
