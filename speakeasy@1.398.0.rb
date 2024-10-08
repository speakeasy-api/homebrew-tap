# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13980 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.398.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.398.0/speakeasy_darwin_amd64.zip"
      sha256 "14e00cf176f816854dabb44d95fdb2dceccd3c5f46be3030cf5711d03afadfe6"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.398.0/speakeasy_darwin_arm64.zip"
      sha256 "359cdc67a6f3a6f889091e2be7318efb48a779a51f8269c0261f9e93b79252bb"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.398.0/speakeasy_linux_amd64.zip"
        sha256 "d53084bb4315e8b8d21d5bd05169bbe1199a4cfa7eaa58471edae094ce30a362"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.398.0/speakeasy_linux_arm64.zip"
        sha256 "1e595a8a5105c534248f39b690cfdff01cf18360f04354d9920abc85e25cfdac"

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
