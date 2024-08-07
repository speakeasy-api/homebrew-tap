# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13570 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.357.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.0/speakeasy_darwin_amd64.zip"
      sha256 "264a1923ff71069862572b5a53576186cb034083252534e9e5cafb2835fd2d64"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.0/speakeasy_darwin_arm64.zip"
      sha256 "ba7f9fd5aca3fd3e636a864d0fadebbdaa1bd35bdf0708481d0efa6e04e99a66"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.0/speakeasy_linux_amd64.zip"
        sha256 "dc1b0e5565ba492733e369f171dbf0733db9e84e7549b0087978b0e4f31fb7af"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.357.0/speakeasy_linux_arm64.zip"
        sha256 "48b4075c294a475c938a8a076042a42c4a6d70730470042adbf362276d579bba"

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
