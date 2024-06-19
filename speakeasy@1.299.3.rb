# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12993 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.299.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.3/speakeasy_darwin_amd64.zip"
      sha256 "b7365bd641e1739012e92d745e7c95d82b467e4dca42392ffb8c85df70d52517"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.3/speakeasy_darwin_arm64.zip"
      sha256 "cbf05740007c0f70aa357e7b00d5530b4d2c67018e60bfb629e1bc45cffdfc97"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.3/speakeasy_linux_amd64.zip"
        sha256 "a73e1bb944498b8bda0af724c954af0c533ef0936d68fff79f3371f94827ed2f"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.299.3/speakeasy_linux_arm64.zip"
        sha256 "5b239f10ef61cfb3e1f6a313419b63ce25a7677f1711c5a22b6a368ecd151004"

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