# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14606 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.460.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.6/speakeasy_darwin_amd64.zip"
      sha256 "edc473990bbb35b74c634c8706d330f01e250b0942ed83d06fc03f20031a5e06"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.6/speakeasy_darwin_arm64.zip"
      sha256 "e803b62bbccf6a2bd2c5095b9c2ee6774667d7bd9fb38d84cf5980ca4cb1f505"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.6/speakeasy_linux_amd64.zip"
        sha256 "bf98352681fa2c944f641caaacb4fcc014d8b0b3dab358eb51c58891b1766c52"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.460.6/speakeasy_linux_arm64.zip"
        sha256 "e79f7cc499eed30ccf3534ac35283e1afbaf04dee2ceb8ac698d172374c0e3ba"

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
