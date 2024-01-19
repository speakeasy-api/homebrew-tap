# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.148.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.148.0/speakeasy_darwin_amd64.zip"
      sha256 "6692110b2906a65e02e5ef1f1cbde193e7f96f8fff94f4267f40541a067ee4f4"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.148.0/speakeasy_darwin_arm64.zip"
      sha256 "fe8a0809d6165a9fbec7794de9a656e2f94179659085f7fbf4c06f697832f2a6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.148.0/speakeasy_linux_arm64.zip"
      sha256 "fef5190f0d2614861ac9a6fd1f4e74916fbe0ae762225b05a1cc1387b7c54858"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.148.0/speakeasy_linux_amd64.zip"
      sha256 "1a56fba409b97f05aa98d78a4a242f0963de64348a2340fda903c504e8460179"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
