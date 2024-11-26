# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14480 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.448.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.448.0/speakeasy_darwin_amd64.zip"
      sha256 "e66bb2e7490154c75ff414e14916b22276e9737a15fecccfcbbec8d09ab9cb4b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.448.0/speakeasy_darwin_arm64.zip"
      sha256 "ea98fb83d205ea58300e036ded1bd1d6bc21cce17d48c45b1391a8d26d312f92"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.448.0/speakeasy_linux_amd64.zip"
        sha256 "ef15d9a5b5529dea8aa0eda69e7cfed780f788ed46713e338c92a2eb4911d6bb"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.448.0/speakeasy_linux_arm64.zip"
        sha256 "37bd03c634a480e2993103688de84365a78902e44d063e98e7aeb20668b3a2df"

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
