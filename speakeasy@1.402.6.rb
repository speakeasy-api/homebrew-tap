# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14026 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.6/speakeasy_darwin_amd64.zip"
      sha256 "a599d4719448f5cea23cc137319fcac07ff1a189c0c9109e9a9199d14fc86a29"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.6/speakeasy_darwin_arm64.zip"
      sha256 "ccab1284e9482cbbf6b54eefa39b946f9a3cd7595b1364d080421ab83b65231f"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.6/speakeasy_linux_amd64.zip"
        sha256 "835839bb9a33aad5ee6fe5cd98700270d4553eacf3635d92a6d8e720818d7435"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.6/speakeasy_linux_arm64.zip"
        sha256 "0fb28cbc25a76a3d9fd127bba60ae9cc99a2046a76aac73c3eaf7b1df8b9ec16"

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
