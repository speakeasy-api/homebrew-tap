# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14701 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.470.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.470.1/speakeasy_darwin_amd64.zip"
      sha256 "a042e8fcb1c7cf21f20e6ee75a3b09017a4aae9f96f5bbda88aec95235c3b0e3"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.470.1/speakeasy_darwin_arm64.zip"
      sha256 "4345119acf76580525497824c6427085d9a4a7f0df5e1073d734541cf434d628"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.470.1/speakeasy_linux_amd64.zip"
        sha256 "dc0090b27a38bc6e4538f3dccd10bc2841f3a32d530ef0f26a8363c7f3016d35"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.470.1/speakeasy_linux_arm64.zip"
        sha256 "a8ed983f8515f94b2bf4173c7906b75d0b9bd21b94c60d0f721cc4d34ca872cf"

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
