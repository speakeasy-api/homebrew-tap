# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11211 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.121.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.1/speakeasy_darwin_arm64.zip"
      sha256 "9bbb6e2e1fce528cd4d49070e3fd4639031be4b12718f66b616c323047a8b00d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.1/speakeasy_darwin_amd64.zip"
      sha256 "6e2c8db732c173f5fd3f6c1946118534cc8185fc2844e9dce85f16d7af769b89"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.1/speakeasy_linux_amd64.zip"
      sha256 "d4eb334a698e3988dd273d7a926e0cc65883c2546531ae24b8ecab8daf431240"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.121.1/speakeasy_linux_arm64.zip"
      sha256 "915fe1ca0afeee9a6e473a856de608e89c8252903259a04b5b75b63b123ed56e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
