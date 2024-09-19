# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13910 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.391.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.0/speakeasy_darwin_amd64.zip"
      sha256 "b0ef32761a930174a0b5521ea6ea4d4ee29a4ad8b5900bbde50a5f9e4309f1a4"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.0/speakeasy_darwin_arm64.zip"
      sha256 "cb1f9afac5197a439ff021f338e3a72719941bf2bf41601be301d123ba169af5"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.0/speakeasy_linux_amd64.zip"
        sha256 "3383554aab873f34e41c76e751c47ab60c2e49c4100557b7772966560431506a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.391.0/speakeasy_linux_arm64.zip"
        sha256 "6c1124bf14dc4d0c9197302acbc4c201ae8135edf17c8eb08cb8e201a0a3393e"

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