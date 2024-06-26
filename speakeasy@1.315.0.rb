# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13150 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.315.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.315.0/speakeasy_darwin_amd64.zip"
      sha256 "6fc94749bb5809b854db877830fe0ba8be05f561e89b5e73fd7950c4e86424e3"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.315.0/speakeasy_darwin_arm64.zip"
      sha256 "e34434de74286d23a106114f194adf27a7155820fe489669c300e612830c1fd6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.315.0/speakeasy_linux_amd64.zip"
        sha256 "ac617efd463209d23228227365976fa5467e7ecc26acf55362a55b18ce21380e"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.315.0/speakeasy_linux_arm64.zip"
        sha256 "e267d30073780d6eb8ad52215ee9a834ca6de74cde2cdda8c1d2d94bdbaef1f5"

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
