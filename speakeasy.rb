# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.399.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.2/speakeasy_darwin_amd64.zip"
      sha256 "f910ff6074387bfcfb955c2df27ec0f3912b7770c52afcee9a7330201d1f4b86"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.2/speakeasy_darwin_arm64.zip"
      sha256 "5af2a31a710c84019bac0aaa67bbc3412a00adfdea132ce0f7d0b2d2eab047c8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.2/speakeasy_linux_amd64.zip"
        sha256 "30c6604f63b849faedb446ea1ff986f48705f9c1563a6b3c627ecfbdad79498c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.399.2/speakeasy_linux_arm64.zip"
        sha256 "5e8dd76fc1336b4071871d159d5328edd5fcc291ca918521b5abbf6da38f142e"

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
