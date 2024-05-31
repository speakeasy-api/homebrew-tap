# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12994 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.299.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.4/speakeasy_darwin_amd64.zip"
      sha256 "5c3a8957894f8ec71c6fbf307dda5125484c144f3b8f5ecb6d8e92239857a20f"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.4/speakeasy_darwin_arm64.zip"
      sha256 "90c50be193b2f200a9bf487ed8a72fdbb215d5202145a5c02d7cc6fca4f20a11"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.4/speakeasy_linux_amd64.zip"
        sha256 "748f7f1592b39a6dbd3fca3e9ce2d864245f708afedba5743834723f8fec1606"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.4/speakeasy_linux_arm64.zip"
        sha256 "2f79f85d1c2cd153012aad223aa312617670d4bff53ef23dd0d024aee7824492"

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
