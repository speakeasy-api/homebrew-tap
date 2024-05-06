# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT12791 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.279.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.1/speakeasy_darwin_amd64.zip"
      sha256 "d990237930822bfe4d24ced89fff2b63014de1edf6d3a7a9f7001023b214385c"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.1/speakeasy_darwin_arm64.zip"
      sha256 "3d6a14b71b4b96ba3bb16b54d33b9374c79ea9150a661d0e86b77f2f3f936f51"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.1/speakeasy_linux_amd64.zip"
      sha256 "e70c498f7bc901ede3fde3f2c1c8332589f74de4740d9640cbf38d282b3c4d20"

      def install
        bin.install "speakeasy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.279.1/speakeasy_linux_arm64.zip"
      sha256 "ad795b95955e12ef6c3cdcb052ad7da254bf3d73ed61dade5ba2f17d70c6b549"

      def install
        bin.install "speakeasy"
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
