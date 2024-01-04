# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11301 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.130.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.130.1/speakeasy_darwin_arm64.zip"
      sha256 "9963cbed099dadd7a21d42f8ca7b34829ccbccd66cb111e8b0cccff74d9f705b"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.130.1/speakeasy_darwin_amd64.zip"
      sha256 "ac4221a3ec3ce62b9411546a47415eec201b799269d33005e5944ff50ac1291c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.130.1/speakeasy_linux_arm64.zip"
      sha256 "9491bfb77c83cd88525c76d74a3c43a6b37448f71919249d3caa044c830bc9c8"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.130.1/speakeasy_linux_amd64.zip"
      sha256 "1d4dfc381ada1e3d3e04aadb3d06823ef9914be5701ec442def1041e816264fc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
