# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.64.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.0/speakeasy_darwin_amd64.zip"
      sha256 "61f67fa6ef81f2490fdf1bcda34125f5fcc766de3c00edd3b25921a1a70783d0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.0/speakeasy_darwin_arm64.zip"
      sha256 "ad779a610ba2bd2fcd9117e6891bab3c8b01d1770c76ae65ba274d8f83107d78"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.0/speakeasy_linux_amd64.zip"
      sha256 "022785ba2a8a0b1057b8d47f9732cda7ddf01a007ae06cdd702fd783fb2ae69c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.64.0/speakeasy_linux_arm64.zip"
      sha256 "262b94bd6d07a1c27a223544f9e0a3687ae7a22842f724604253ced20107d5ef"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
