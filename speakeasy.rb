# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.111.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.111.1/speakeasy_darwin_arm64.zip"
      sha256 "9110afc273ea2998d7a6b6d8802fcf35394046b4291eeb61827371fd1281e6fe"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.111.1/speakeasy_darwin_amd64.zip"
      sha256 "5a4f11a8109a8c5dcd33c0b11b07bb9445735a967a7ac67071eef104f4241727"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.111.1/speakeasy_linux_arm64.zip"
      sha256 "d202c4ef3536b7a20b988d338ee06a59b0c09a7b95f706977072452fa6dde025"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.111.1/speakeasy_linux_amd64.zip"
      sha256 "23415d442078b585e5c9577f38923bbbc746ae046868363ea626b1a807a0654a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
