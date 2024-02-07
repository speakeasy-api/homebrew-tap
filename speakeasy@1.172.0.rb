# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11720 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.172.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.172.0/speakeasy_darwin_arm64.zip"
      sha256 "a3b07dddbad263d178b6cf9bf6b8a5e04174686fefcd61ac552359e1b66e0faa"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.172.0/speakeasy_darwin_amd64.zip"
      sha256 "0bb620fc061824a216c4126cbdbe15cec8c4e4b3c2a8d16c1047e9e17cb892a7"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.172.0/speakeasy_linux_arm64.zip"
      sha256 "a93acf0af3b3c0087103dfb5694c994a2631dbcbb79e3f375a49d9ca2e095b6e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.172.0/speakeasy_linux_amd64.zip"
      sha256 "0483ef0499f7beb8f5b864c709ab9b96099d9a304426312a7764a6dfda3475b6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
