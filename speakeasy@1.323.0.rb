# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13230 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.323.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.323.0/speakeasy_darwin_amd64.zip"
      sha256 "81c423df95318ada38bd9d0e93e90e03bc91af03e886fe79fb905c7930e47db0"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.323.0/speakeasy_darwin_arm64.zip"
      sha256 "60203bcd6b12081241262e02c32f1f57de2a05ffdacb1c9653aa0c337786366e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.323.0/speakeasy_linux_amd64.zip"
        sha256 "460fab8b5fd182c11f10bfff684732591850071e5d1c02a831168c889a1d3b69"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.323.0/speakeasy_linux_arm64.zip"
        sha256 "833feda611e81e7beced539f1b0ad82bf8e3dc04c4785ce1008060e4644f40d0"

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