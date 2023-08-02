# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT1681 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.68.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.1/speakeasy_darwin_amd64.zip"
      sha256 "629f44164a3325ba80f58bfeae180b5e52908fd02aae8ac73f90bb7013232c33"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.1/speakeasy_darwin_arm64.zip"
      sha256 "6c2d9bc54ac037bc2f6706928b88759ce3159d489737aeff8d3e866fabe5edb8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.1/speakeasy_linux_arm64.zip"
      sha256 "f850d0c0e402bb81470619786c8364c7e875c51596c396e19e9d8c30a86cc567"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.68.1/speakeasy_linux_amd64.zip"
      sha256 "af9e12766a9899f5ef3870f7f1c048c4432a22204f20b471eb305e5ee06cc467"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
