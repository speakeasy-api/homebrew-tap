# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14055 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.405.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.5/speakeasy_darwin_amd64.zip"
      sha256 "ea4a6df785d6597bd6d491a010d22d29f6f9c4b847c2f527b5c379dc8ab670df"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.5/speakeasy_darwin_arm64.zip"
      sha256 "8d4fa7e77d559fbebb1cc24e9e13e039b24f26740f801da831407316b885dc3a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.5/speakeasy_linux_amd64.zip"
        sha256 "2243524d16228bd441c672afdc46f4e58b752290503259ca1b2de1f03599bc27"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.5/speakeasy_linux_arm64.zip"
        sha256 "8a4ce1c6fa1e99ee90fee71e3f9bff35bc76602deebebf8b954b145367249161"

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
