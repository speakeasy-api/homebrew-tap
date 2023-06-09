# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.46.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.2/speakeasy_darwin_amd64.zip"
      sha256 "f952b0268b626f79543796f26b27ba6cb9c95f9500fddff477ba3728255eaa8d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.2/speakeasy_darwin_arm64.zip"
      sha256 "4543d983f9beabe8c9239011292ac073c07141e311be352ed57ecdcf05f28239"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.2/speakeasy_linux_arm64.zip"
      sha256 "464a8c892f6028b8fc75b282b13f98be10fdf5a1198a0b1ef4045c22c54439b1"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.46.2/speakeasy_linux_amd64.zip"
      sha256 "e36ef4770d03e9eb14d1cc09bf3e9a2a96ac8b7a0cb2460d2093cb99eac71223"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
