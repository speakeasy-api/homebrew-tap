# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.390.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.2/speakeasy_darwin_amd64.zip"
      sha256 "8cd56ea115224e740e8cf5f346f472bcea658d179b9c0910f645a37afd8511af"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.2/speakeasy_darwin_arm64.zip"
      sha256 "e32bfaa4b1c95407c4aafcc9d2ac459c7141160a6d55ffa17426587168747365"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.2/speakeasy_linux_amd64.zip"
        sha256 "14ee9ac69b36170236a21fc841f3f2eebba370666912951fba54efc136571626"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.390.2/speakeasy_linux_arm64.zip"
        sha256 "b705ce349934ee8af98139ccb5d83081db3f00295e3c717a8c48b0b7cb1ee1d6"

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
