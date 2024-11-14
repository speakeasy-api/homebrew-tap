# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14390 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.439.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.439.0/speakeasy_darwin_amd64.zip"
      sha256 "a5b110a6d7230308a676e945be23b99b40a975b5f4cd40d5930948bd4423e667"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.439.0/speakeasy_darwin_arm64.zip"
      sha256 "44e9d54e21b9b2ce8830c786a11e4b9b7545dac66ffe75e7e3633cd2897fdcae"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.439.0/speakeasy_linux_amd64.zip"
        sha256 "9b5f4e162745d5d0733f77899bb765485fda760c23b726de6023df065e16ce23"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.439.0/speakeasy_linux_arm64.zip"
        sha256 "0f462dd8685b583f23e90207dff42ae8137fde84d748bca66827209f8a02dd12"

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
