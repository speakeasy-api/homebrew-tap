# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14050 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.405.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.0/speakeasy_darwin_amd64.zip"
      sha256 "8842535509eacd98b66c5d04f41362bb379df91e25fb6a79a81227c3d96d13d6"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.0/speakeasy_darwin_arm64.zip"
      sha256 "cf5f707ac6b4dd516cdd85546df8a17a1d037f7b7852ce1d7afdd9d2cbfc4287"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.0/speakeasy_linux_amd64.zip"
        sha256 "2521884e4a2ca1102bc3073c7934823761f4edafd2b8226d059a8d685b87922d"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.0/speakeasy_linux_arm64.zip"
        sha256 "6fe661278dcf089b5c3a01c662ad6bb285a92f667e762da482585a192d32a0fe"

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
