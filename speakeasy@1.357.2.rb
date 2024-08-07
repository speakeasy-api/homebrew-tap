# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13572 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.357.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.2/speakeasy_darwin_amd64.zip"
      sha256 "aecc1b023df1d19591e235a7556078a188c9c9f96cffe0926da3566ec5476dc9"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.2/speakeasy_darwin_arm64.zip"
      sha256 "c18cecafde77f1ac7a1a1f38bf38f92de3e203b44593026452ab3f98a43eee85"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.2/speakeasy_linux_amd64.zip"
        sha256 "584b8b91ea953ac5ff907e8d86d6d285169bffc7cd58fef4ea0b664b473686a3"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.2/speakeasy_linux_arm64.zip"
        sha256 "7c152259bb25342a80eab9881cf9ff011cea78fe9fef09438c26d367a0180038"

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
