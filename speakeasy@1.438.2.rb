# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14382 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.438.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.2/speakeasy_darwin_amd64.zip"
      sha256 "20e18e4648b2c385f3bb43932a48e22ab3ab63bb66c8922d7260cff696e14d10"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.2/speakeasy_darwin_arm64.zip"
      sha256 "c79ce8f5d4d5f54b79f264afa81b1354f565a18deeae7f8cda57eeef103112a2"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.2/speakeasy_linux_amd64.zip"
        sha256 "d5fe2720c0ad3dbf655648cdd14bc0a5bfbe7d9211fa0606d63d3d0b748a9ed8"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.438.2/speakeasy_linux_arm64.zip"
        sha256 "e9efacfa104143298781765485da7def9304b25115c3cf12809d0a5419c95995"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
