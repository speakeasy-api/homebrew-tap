# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.285.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.4/speakeasy_darwin_amd64.zip"
      sha256 "9e3e2461be9fa8b6f3f4968a65fd4c05fc8e20a2cfca8d42276942d7f6459070"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.4/speakeasy_darwin_arm64.zip"
      sha256 "1600848c3ad747e4d9594b3728d6a364f71323a568c72cb40e74dcf9149f20a4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.4/speakeasy_linux_amd64.zip"
      sha256 "d78ad62876e5d827f7eb82e1f5ae68bed6879cc4dcff9f25d27bbb69d107d49e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.285.4/speakeasy_linux_arm64.zip"
      sha256 "317d406bee5ef10bb9f82d15ae526131fb225158e2e6f483f6e47ad0ea559ed6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
