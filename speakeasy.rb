# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.521.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.521.0/speakeasy_darwin_amd64.zip"
      sha256 "50b70756f55d6039ec3d6d9a029d25ea23dc923b4e130170e7a0d4062b2a23e9"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.521.0/speakeasy_darwin_arm64.zip"
      sha256 "11532ba934158df5f33a0036ae38e8261bc6f9040d8bbadb95993c8b416acded"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.521.0/speakeasy_linux_amd64.zip"
        sha256 "1d01737c53bb7608a7ebfac6108f2c8e4fa2cdd2b174feb3a5f1b0b96dd3ea09"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.521.0/speakeasy_linux_arm64.zip"
        sha256 "23e160a1e287618cb63907875d197ce8e07e18f9159cbac90deffa8e5fdd8ff4"

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
