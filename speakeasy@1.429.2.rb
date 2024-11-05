# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14292 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.429.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.2/speakeasy_darwin_amd64.zip"
      sha256 "378acc25ef42d599cf364989b641e9b4b47e9e6aee2173628e48972939e4b087"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.2/speakeasy_darwin_arm64.zip"
      sha256 "3831602ef0443aa843eeb80a1672f29fefb70fcb0d46c589a58a0dc8a841f37d"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.2/speakeasy_linux_amd64.zip"
        sha256 "6546fef2ed5a5cd751a7c581048d702d275aa2cf884900284d875129734e5e4a"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.429.2/speakeasy_linux_arm64.zip"
        sha256 "5bf199c42d1b60adeb751ba6a315ecb9116284cff155dcc0a079cdfad207d4f1"

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
