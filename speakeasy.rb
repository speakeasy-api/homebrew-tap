# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.412.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.6/speakeasy_darwin_amd64.zip"
      sha256 "9ffbc1021a55d6f959ba340c7ac3ee8b9b1e01ad2268c725e2185dc97b862542"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.6/speakeasy_darwin_arm64.zip"
      sha256 "a6a9f2f93e0d379163a37373a8a5112d53360aa77f4b0df5f05b1467bae432f1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.6/speakeasy_linux_amd64.zip"
        sha256 "3a34277a7140140ef1ec218d8d2a16064d2e425dba5b5dcd303fb93143554fc9"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.412.6/speakeasy_linux_arm64.zip"
        sha256 "4754823793fcaaf596643d3da5fa8ad9265fbf59443ff6435138f9d9226579e9"

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
