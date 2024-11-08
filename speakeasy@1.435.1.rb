# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14351 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.435.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.435.1/speakeasy_darwin_amd64.zip"
      sha256 "f3ae28a3e8af229049f6a2c4b74f08391a318f9a02b0f9a777b5843562cf5498"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.435.1/speakeasy_darwin_arm64.zip"
      sha256 "6f1bf69671c5f16d4259e06c84d90b12ee581a216b728853cd1615fe9c7ad990"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.435.1/speakeasy_linux_amd64.zip"
        sha256 "58e164ffaa4bb0bb6915bd2f3f1c05df79eaa584759e8064a07a4823e59cd523"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.435.1/speakeasy_linux_arm64.zip"
        sha256 "489735559f7e3683e7f4afcf96d3a4d055c830f05c25910c376c72158189f2f7"

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
