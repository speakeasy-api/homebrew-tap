# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.351.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.3/speakeasy_darwin_amd64.zip"
      sha256 "3b892b67a8c04e50a05a52629444010e8e2f06d99b99e6bb785c365bb9e12810"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.3/speakeasy_darwin_arm64.zip"
      sha256 "8a3046ae22b3af9aac5cc2d718e62407de32241072a79aaf8a9fea6ce1068b5b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.3/speakeasy_linux_amd64.zip"
        sha256 "ce8eb08bc8b87d9899f12b80ad99fd3f28a859dc1407dec5a4ac6179d67bf110"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.3/speakeasy_linux_arm64.zip"
        sha256 "b0443f8a1a9a64ea68fb98f044067964e41f93b5401e51cec5df4728e53f526e"

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
