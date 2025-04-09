# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT15311 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.531.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.531.1/speakeasy_darwin_amd64.zip"
      sha256 "65612627ba42267c4dc9f42c2a861a5863861f92d3a2fd27e98fc5db42cd8504"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.531.1/speakeasy_darwin_arm64.zip"
      sha256 "1397b3aff3d4df38d96736f48da86000789efe89ce099e660be733441b7bd4c6"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.531.1/speakeasy_linux_amd64.zip"
        sha256 "c464b0b898ca03a1cd9c70d10c497c4dbcd0705758d5734b8a09b429f518fe4b"

        def install
          bin.install "speakeasy"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.531.1/speakeasy_linux_arm64.zip"
        sha256 "5a9083a23ce161324693fcf262ceb2dcba7e7374b8cf58815255bac20c6bc495"

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
