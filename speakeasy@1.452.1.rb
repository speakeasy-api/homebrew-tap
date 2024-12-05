# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14521 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.452.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.1/speakeasy_darwin_amd64.zip"
      sha256 "c598920cfc6ce65ad2d31a37f18dc1e74803457a910b7a2862c58b760b1ec778"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.1/speakeasy_darwin_arm64.zip"
      sha256 "c93931692c10835f06e31ce13ba93d6a17ca78d79ed2721199daf714315e367a"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.1/speakeasy_linux_amd64.zip"
        sha256 "58ef39f4fed04c57da4ed154ccc5d1b54c01d7be60ec0ac344eb3ae332ab6248"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.452.1/speakeasy_linux_arm64.zip"
        sha256 "af234b90763137074d410e86045af3094f207e9f9d32c016d0ce5b07a1eb8c8c"

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
