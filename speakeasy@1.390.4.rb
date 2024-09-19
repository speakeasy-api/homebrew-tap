# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13904 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.390.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.4/speakeasy_darwin_amd64.zip"
      sha256 "71321ea149ea0012b6a6a72a08424596d83150ed845afccc350876bf4dd13e47"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.4/speakeasy_darwin_arm64.zip"
      sha256 "b390881359bb9009cc2eed59b2f77784ad4c335f086d752fe55f63d10a01146e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.4/speakeasy_linux_amd64.zip"
        sha256 "ad8d8795061cd7615a2863b58243e41f0a86c3a199b7524c30e2cff0d5935168"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.4/speakeasy_linux_arm64.zip"
        sha256 "2ddf74863d40e873b48d806bd974cade9fc561fd6c75c21e4aad1a7f2f61a600"

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