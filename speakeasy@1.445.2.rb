# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14452 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.445.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.2/speakeasy_darwin_amd64.zip"
      sha256 "0e098030bc8f408747839e5c4729fd85b6206e9402b16325ee56a2edcc7978ac"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.2/speakeasy_darwin_arm64.zip"
      sha256 "86e3b8469cc20cf0757e7e139e578193c1a7a2e12b3fc319ace7a5d7aff8d0f0"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.2/speakeasy_linux_amd64.zip"
        sha256 "69959f17773ca0ef8027a93fd5630ab240aff1fa74a0c501d1821b5639edfd61"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.445.2/speakeasy_linux_arm64.zip"
        sha256 "86451fa7f29516e7ce48708bd4b9ce3ecdce5657c41e5eaada9dbb266e6a2b41"

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
