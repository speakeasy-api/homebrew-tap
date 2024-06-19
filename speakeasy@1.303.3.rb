# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13033 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.303.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.3/speakeasy_darwin_amd64.zip"
      sha256 "6028484c007f2a216bfcea0149ea580ff6b1ba481b7c17b2f9256ddb87cbbace"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.3/speakeasy_darwin_arm64.zip"
      sha256 "cef83285f27d4d96cc63453368abc08a1a4f74a7608676c85fdb822cd37c14c0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.3/speakeasy_linux_amd64.zip"
        sha256 "4864ad47fcca335d78add29ce431d5d31a3096d16cfe1281031163fda5d71829"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.303.3/speakeasy_linux_arm64.zip"
        sha256 "e720b790fa8cf99f41dc991d44d77492e3802fedf9cc42328b9d71122edf6c5a"

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