# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.478.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.478.2/speakeasy_darwin_amd64.zip"
      sha256 "c711b8385dae36a565bcce55faf006d7fc9b851daa70b4d69056de7a0f92323c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.478.2/speakeasy_darwin_arm64.zip"
      sha256 "b68f7bd12f493eee0ee610997a967a52320ae99f22addf7d97bea32e596bba29"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.478.2/speakeasy_linux_amd64.zip"
        sha256 "d1507a316caf96458408a5f91fc7126f96173398ffae549709ebe0c18c4aa95b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.478.2/speakeasy_linux_arm64.zip"
        sha256 "f804679faa174fe2cc8ca8b53daef4869e21414114eac830de69beb5fcc6035a"

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
