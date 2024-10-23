# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14180 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.418.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.418.0/speakeasy_darwin_amd64.zip"
      sha256 "9551c307e33fca3c30a2a22ecd9231eb81399eb6aef2858b2b436e26e031c70e"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.418.0/speakeasy_darwin_arm64.zip"
      sha256 "7550e4ad15940114c11b2e9763de341679d84ca3c21c741e3a8238aa94f55883"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.418.0/speakeasy_linux_amd64.zip"
        sha256 "77c5bf65f3c9f9d2566a52ccec2a17a7a0cd40e6e3dc72c92f3940c9926fb0df"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.418.0/speakeasy_linux_arm64.zip"
        sha256 "8fa3eb74fa8dc7327247947b4ada1a9609bd7b233110a2f0dc8e93a6dd121db5"

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