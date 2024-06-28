# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13220 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.322.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.322.0/speakeasy_darwin_amd64.zip"
      sha256 "500dc94681692b79a8720a146eb448ca1eb47967d3f32cdc5e1c3f34addc4249"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.322.0/speakeasy_darwin_arm64.zip"
      sha256 "e9c224a6f7a17c181ae9563e60989f24ca269cf684f6713285485ea232bb3e55"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.322.0/speakeasy_linux_amd64.zip"
        sha256 "8c400c154ac76b8c0e4b59d4135bba22c3e39f7c8e02422b27a41ae6462b941f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.322.0/speakeasy_linux_arm64.zip"
        sha256 "6781b1b054688c6683788313a1cd386a4f7d4a401d599c7ccd69cc4fddb35846"

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