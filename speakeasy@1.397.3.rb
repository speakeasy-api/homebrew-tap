# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13973 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.397.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.397.3/speakeasy_darwin_amd64.zip"
      sha256 "536218e13f8dbc4b2952ed65744b71909bbc54431a8a259f59db4e102a0cdb71"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.397.3/speakeasy_darwin_arm64.zip"
      sha256 "b56206ffde5e603df45802a893d7c87fcaf22e31c72751a7fe6f368c0edd80b4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.397.3/speakeasy_linux_amd64.zip"
        sha256 "1775381d833b56256650c2cb9fe1902e5fc508827c2e985c77210fe12000ab3f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.397.3/speakeasy_linux_arm64.zip"
        sha256 "08ba1df3105b7f31de6f254458bf501e2aa9aa76efff9af5733a8a7cfe9a1832"

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