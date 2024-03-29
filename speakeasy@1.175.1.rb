# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT11751 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.175.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.1/speakeasy_darwin_amd64.zip"
      sha256 "f5d41003162e4bf4fa969f4e6e68b1cec3606a15b97d04e2ebcdea4f643da23c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.1/speakeasy_darwin_arm64.zip"
      sha256 "7493ecdb466b6e40676273dc75a6fc204967bb575468f68a3382767561eb4a8a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.1/speakeasy_linux_arm64.zip"
      sha256 "032e8df6c2842849d85fb59c1770aced38e696b6bba8100570852b3aed83c740"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.175.1/speakeasy_linux_amd64.zip"
      sha256 "1154aea2f66b8c2090ec1c696edaa7182994d1e94d6a0118ef2cabdbbd2b5572"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
