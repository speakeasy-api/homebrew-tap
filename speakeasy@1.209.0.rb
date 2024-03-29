# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12090 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.209.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.0/speakeasy_darwin_arm64.zip"
      sha256 "0b955229414d91c87edd80470621e7b4ec9cc55673ea009f5df834a2819c307c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.0/speakeasy_darwin_amd64.zip"
      sha256 "641f76a9bfc2090e001846270fc51ef7593fd84a81315788aece0062dae26286"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.0/speakeasy_linux_arm64.zip"
      sha256 "45905e6350ef744371b5bdc5be44a54a67e7ade09defd979a8e22b8f3de68df0"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.209.0/speakeasy_linux_amd64.zip"
      sha256 "93c1c8990e38e423349d83b70ca387f9c7522599470f439b03fe49c3d059293a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
