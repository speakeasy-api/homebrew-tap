# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13441 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.344.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.344.1/speakeasy_darwin_amd64.zip"
      sha256 "605273eb53e707af1cab1ce47c90d4c6b72e8f0452b9278d6c834b0eeb2483e7"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.344.1/speakeasy_darwin_arm64.zip"
      sha256 "b09375373e49826e75888257376f115dcc4bc00e9466967da3723c98bac39de4"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.344.1/speakeasy_linux_amd64.zip"
        sha256 "eef737d9241e6f8d07fd0503cd8754dd16dff483a533e619f7d622602c57b182"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.344.1/speakeasy_linux_arm64.zip"
        sha256 "ba794ce553f90720b75a4bbb4af067e61d7520005c9727221859df30d12b0d20"

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
