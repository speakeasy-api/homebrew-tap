# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.529.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.529.1/speakeasy_darwin_amd64.zip"
      sha256 "e3386bbd8b18e3e500828dc1d20c2799e4655718668adb6b5c8972be7ca78d3d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.529.1/speakeasy_darwin_arm64.zip"
      sha256 "12a513fbd1a1d8161655ab1e6d004f8d50e388dde2637d6ca8e02913030f83bc"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.529.1/speakeasy_linux_amd64.zip"
        sha256 "d954e0d240d7f7a0d2747517bda01812c4855f70d3ded43bf429e768c06517be"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.529.1/speakeasy_linux_arm64.zip"
        sha256 "f35085d14f1e3a4fcc361d396ee359a3ad7d6c07551c646bf36de17010361761"

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
