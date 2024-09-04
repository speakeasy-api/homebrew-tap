# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13792 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.379.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.379.2/speakeasy_darwin_amd64.zip"
      sha256 "2dba0901b45465b1b863d7b8ca6361245a44125a2da25aa0b655e6e8b55c660a"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.379.2/speakeasy_darwin_arm64.zip"
      sha256 "f7257bfba022be9619e47b594c73abb98ab8b9fa2917a01554fb313bbf1245c8"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.379.2/speakeasy_linux_amd64.zip"
        sha256 "2f2fc3fc852ffb31eaf45e7e23468dd1967ea84686ddee06db9b45d4330719c5"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.379.2/speakeasy_linux_arm64.zip"
        sha256 "d95278aafb120d5ff9a883d2e06d442b7ed8d34acc6710f65b045146fcc566b9"

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