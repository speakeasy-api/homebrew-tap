# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13200 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.320.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.320.0/speakeasy_darwin_amd64.zip"
      sha256 "d8f32febfbf8a852619223a237abb436e79a8c138aee29923e743c42114716df"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.320.0/speakeasy_darwin_arm64.zip"
      sha256 "ab00aef665aaf015ae668c40ed924c8f1c6ec63112fa1c0e1db8d59d57367e9e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.320.0/speakeasy_linux_amd64.zip"
        sha256 "ffd09b30a110d11771065e3788bae8e674cd195f3f2c21e26fab2fdd3acdfc02"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.320.0/speakeasy_linux_arm64.zip"
        sha256 "0312bb31885c8ab7d6a09f8221d647c73420a6323d23950d24708859a3ad15d9"

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
