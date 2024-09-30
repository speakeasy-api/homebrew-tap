# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14052 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.405.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.2/speakeasy_darwin_amd64.zip"
      sha256 "c2cdabedb811bf4558bf06deaf290b11104995472821cb88edee55ef18015f3a"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.2/speakeasy_darwin_arm64.zip"
      sha256 "015518ea53831beb6d725df0fa8872eef339b9c069c8b865b1e16fbf3196c0ba"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.2/speakeasy_linux_amd64.zip"
        sha256 "3c4de078d9ba7c63464cc3fdd52f8eb9cd611661fad7be2612522e54b3a0e364"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.405.2/speakeasy_linux_arm64.zip"
        sha256 "25d724ebbf671ec6364e58f5a49c652d9560e9c61eb69a16be088e0aa1461238"

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