# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14240 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.424.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.424.0/speakeasy_darwin_amd64.zip"
      sha256 "92061b98a2347cf63993c0655e5333f95c4855f18da20fb994b1cbdcdd7d6ae9"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.424.0/speakeasy_darwin_arm64.zip"
      sha256 "f2822ee675d8ee59555aa8d5e52820d30d5b24a78017d6c789691ead2e8c5a88"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.424.0/speakeasy_linux_amd64.zip"
        sha256 "70af7ffc43a2c43784a808bd3e8ebc70a21b720ef17a894902782a2efd35817c"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.424.0/speakeasy_linux_arm64.zip"
        sha256 "47cf30751ccbb6043d007b38cec38d4721a90be0d04d69e7acb9ebc404a9f8e3"

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
