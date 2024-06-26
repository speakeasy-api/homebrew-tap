# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12360 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.236.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.236.0/speakeasy_darwin_amd64.zip"
      sha256 "d4bf0e0e2697fd871fa54fef7099a33053298b1103de557030f8d4c11a52074c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.236.0/speakeasy_darwin_arm64.zip"
      sha256 "a5d31e544c163034f7477b20ede4004980e2d7f8583da6a97faac8cd53caf499"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.236.0/speakeasy_linux_amd64.zip"
      sha256 "6fad3ca9b92dee5ee7b8f125694b42bb1ef006ed495b721df397ce5f3e402e94"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.236.0/speakeasy_linux_arm64.zip"
      sha256 "ae777a995904fca39b96949c0e00ee278251797aa1238a7f74b128c711d463c1"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
