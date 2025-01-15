# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.468.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.8/speakeasy_darwin_amd64.zip"
      sha256 "5e038aea0c4e7df2f0b551016e067e311d998a88f71403af27a03978852f587d"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.8/speakeasy_darwin_arm64.zip"
      sha256 "41bd24fb9af00e1f90666305686fba9e2c32d3ac8d1b5d8b8960cdaea9b8f25e"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.8/speakeasy_linux_amd64.zip"
        sha256 "ce9c3f194550220541f691310bc21c6fbd448b9942e6f8eb88d128e6694e07f4"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.468.8/speakeasy_linux_arm64.zip"
        sha256 "82ed17cffc80e1b0e0071dac48e093d81dffce79760df9dc5e54d9c4ee09541a"

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
