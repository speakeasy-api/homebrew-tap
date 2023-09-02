# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.77.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.2/speakeasy_darwin_amd64.zip"
      sha256 "27b275045142ad8b4f7d6e1ee4ba79e66a7d22dde692cfcd131a168c4c9827e0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.2/speakeasy_darwin_arm64.zip"
      sha256 "440006985d4ccc885588bdb1306a9b4b11f20827ff8fd90dbc3293302f3ca0e6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.2/speakeasy_linux_arm64.zip"
      sha256 "dfa5cea7cdb6967920972d01c313d472a98ea3c5e4aebe385ae310b5e59d313e"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.77.2/speakeasy_linux_amd64.zip"
      sha256 "558afe0112efedbd9fce6a77616f3fd3630c92f031a2bfcd39f0bc6b76ad1b0a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
