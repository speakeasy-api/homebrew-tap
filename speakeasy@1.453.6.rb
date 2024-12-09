# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14536 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.453.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.6/speakeasy_darwin_amd64.zip"
      sha256 "66479f085561533124f8b0f833a278e6a0e70d80c0ad037a7e55debe728f3e52"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.6/speakeasy_darwin_arm64.zip"
      sha256 "2797aac9f7f377c1c66f0062252d072e4d6c8c9b775dced752554703ed6f4a25"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.6/speakeasy_linux_amd64.zip"
        sha256 "9af62c8e9b41caf0bd50e5c2324d0cc32abab14fc894988c0f8f950158d97279"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.453.6/speakeasy_linux_arm64.zip"
        sha256 "eb440c88ef2dce19f84d31a35e74541fe5bed5a59c84737763d7d23c82556ad6"

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
