# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.451.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.5/speakeasy_darwin_amd64.zip"
      sha256 "0b4541efcde3101c5e00f9cb3de2f3bb754b09486cbaad3fa05277786a364390"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.5/speakeasy_darwin_arm64.zip"
      sha256 "4b5772d517f9eecce7a91c6474b2bd876f1d90fe9ee82455089c887fff590312"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.5/speakeasy_linux_amd64.zip"
        sha256 "44eb91371543389d7cfd75fb34918fdbd002d8aabcc715d8c05055291e69c634"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.451.5/speakeasy_linux_arm64.zip"
        sha256 "b5a73e32b57c2cee75e6513fbc57e5973563a0b72a9733f155d33b0e02d96255"

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
