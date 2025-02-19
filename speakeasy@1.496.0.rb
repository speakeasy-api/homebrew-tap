# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14960 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.496.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.496.0/speakeasy_darwin_amd64.zip"
      sha256 "f4ac50b717ca076622fd6d66d58a95c5466ab18fdead23c2d103226dba32e575"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.496.0/speakeasy_darwin_arm64.zip"
      sha256 "9ccc28b9f74aa0f4fa272416d2f7688604bbf86e487ea34ad6f7d0f84268fa1a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.496.0/speakeasy_linux_amd64.zip"
        sha256 "db0a6fbfd19c4bc8376a7716cd883d39d789362819155da51638089b2fae9c6d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.496.0/speakeasy_linux_arm64.zip"
        sha256 "1ca849829bef5e4e8d07943bf07ee73cd76d20ce0b54d79e6309bf69511712d1"

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
