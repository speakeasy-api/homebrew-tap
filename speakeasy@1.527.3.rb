# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15273 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.527.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.3/speakeasy_darwin_amd64.zip"
      sha256 "f509ac269219e46f230c2db8263dbb6c0fc7e1b862b381786903c951e44a773a"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.3/speakeasy_darwin_arm64.zip"
      sha256 "b28ec02c444992763f08fddd57abd8eb26853dc669ffc863a3c83896d59a6345"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.3/speakeasy_linux_amd64.zip"
        sha256 "b27c6b728901b72352666d4b9817f7a8d0751ec000d2f70f58c608ef1ec5c411"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.527.3/speakeasy_linux_arm64.zip"
        sha256 "44d08c1fbc125af14825f777bed8276d5b77fde459d2bb0add483557cefb48c4"

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
